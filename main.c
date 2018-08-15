/*
 * File:   main.c
 * Author: linuva
 *
 * Created on August 12, 2018, 11:59 AM
 */

#include "globals.h"
#include <stdbool.h>

// PIC16F616 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = INTOSCIO  // Oscillator Selection bits (INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select bit (MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config IOSCFS = 8MHZ    // Internal Oscillator Frequency Select bit (8 MHz)
#pragma config BOREN = ON       // Brown-out Reset Selection bits (BOR enabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 8000000

#include <xc.h>

#define SHIFT_CLK (PORTCbits.RC0)
#define SHIFT_DATA (PORTCbits.RC2)
#define SHIFT_LATCH (PORTCbits.RC1)

void setup_shift_register(void) {
    TRISCbits.TRISC0 = 0;
    TRISCbits.TRISC1 = 0;
    TRISCbits.TRISC2 = 0;
    
    SHIFT_CLK = 0;
    SHIFT_DATA = 0;
    SHIFT_LATCH = 0;
}

void write_byte_to_shift_register(unsigned char byte) {
    SHIFT_LATCH = 0;
    
    for(char i=0; i < 8; ++i) {
        SHIFT_CLK = 0;
        SHIFT_DATA = byte & 1;
        SHIFT_CLK = 1;
        byte >>= 1;
    }
    
    SHIFT_CLK = 0;
    SHIFT_LATCH = 1;
    SHIFT_DATA = 0;
    SHIFT_LATCH = 0;
}

#define SEGMENT_CTR_CLK (PORTCbits.RC4)
#define SEGMENT_CTR_RESET (PORTCbits.RC5)

void setup_segment_ctr(void) {
    TRISCbits.TRISC4 = 0;
    TRISCbits.TRISC5 = 0;
    
    SEGMENT_CTR_CLK = 0;
    SEGMENT_CTR_RESET = 1;
    SEGMENT_CTR_RESET = 0;
}

void inc_segment_ctr(void) {
    SEGMENT_CTR_CLK = 0;
    SEGMENT_CTR_CLK = 1;
    SEGMENT_CTR_CLK = 0;
}

void reset_segment_ctr(void) {
    SEGMENT_CTR_RESET = 0;
    SEGMENT_CTR_RESET = 1;
    SEGMENT_CTR_RESET = 0;
}

inline static void setup_timer1(void) {
    // Setup timer
    T1CONbits.TMR1GE = 0; //not using the gate
    T1CONbits.T1CKPS = 0b10; //pre-scalar
    T1CONbits.T1OSCEN = 0;
    T1CONbits.nT1SYNC = 1;
    T1CONbits.TMR1CS = 0;
    T1CONbits.TMR1ON = 0;
    
    // Setup ECCP
    CCPR1 = 50000; // timer count for interrupt
    
    
    CCP1CONbits.CCP1M = 0b1010; // Compare mode with software interrupt
    
    
}

inline static void start_timer1(void) {
    T1CONbits.TMR1ON = 1;
}

inline static void stop_timer1(void) {
    T1CONbits.TMR1ON = 0;
}

inline static void reset_timer1(void) {
    TMR1H = 0;
    TMR1L = 0;
}

void setup_interrupts(void) {
    ANSEL = 0;
    
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    
    // Enable RA2 interrupt
    OPTION_REGbits.INTEDG = 0;
    INTF = 0;
    INTCONbits.INTE = 1;
    
    // Enable porta interrupts
    RAIF = 0;
    INTCONbits.RAIE = 1;
    
    IOCA = 0b00100000;
    
    // Clear the interrupt flag
    CCP1IF = 0;
    // Enable the timer 1 interupt
    PIE1bits.CCP1IE = 1;
}

void stop(void) {
    if (state == STOPPED) {
        // already stopped
        return;
    }
    
    stop_timer1();
    
    state = STOPPED;
}

void start(void) {
    start_timer1();
    state = TRIGGERED;
}

void reset(void) {
    if (state == ARMED) {
        // We are already reset
        return;
    }
    
    if (state == TRIGGERED) {
        // Currently triggering so need to stop first
        stop();
    }
    
    // Rest counter
    reset_timer1();
    reset_segment_ctr();
    state = ARMED;
}

void compute_output(int count, unsigned char outputs[]) {
    unsigned char out = 0;
    
    while(count > 999) {
        count -= 1000;
        ++out;
    }
    
    outputs[3] = LED_SEGS[out];
    
    out = 0;
    while(count > 99) {
        count -= 100;
        ++out;
    }
    
    outputs[2] = LED_SEGS[out];
    
    out = 0;
    while(count > 9) {
        count -= 10;
        ++out;
    }
    
    outputs[1] = LED_SEGS[out] | LED_DP;
    
    outputs[0] = LED_SEGS[count];
}

void output_counter(unsigned char outputs[]) {
    reset_segment_ctr();
    //__delay_us(1);
    for(char i=0; i<4; ++i) {
        write_byte_to_shift_register(outputs[i]);
        write_byte_to_shift_register(0);
        inc_segment_ctr();
    }
}

static void setup_switch_inputs(void) {
    TRISA2 = 1;
    TRISA5 = 1;
    
    TRISC3 = 1;
}

void setup_debounce_timer(void) {
    TMR0 = 0;
    OPTION_REGbits.T0CS = 1;
    OPTION_REGbits.PSA = 0;
    OPTION_REGbits.PS = 0b111;
    
    INTCONbits.T0IF = 0;
    INTCONbits.TMR0IE = 1;
}

#define CONTINUE_ON_STOP (PORTCbits.RC3)

inline bool continue_on_stop(void) {
    return CONTINUE_ON_STOP;
}

static volatile int counter = 0;
const static int counter_max = 9999;
static volatile bool counter_changed = false;

static volatile unsigned char debounce = 0;

void __interrupt() int_routine(void) {
    if (CCP1IF) {
        //counter interrupt
        stop_timer1();
        reset_timer1();
        
        if(counter_max == ++counter) {
            state = STOPPED;
        }
        
        counter_changed = true;
        
        if (state == TRIGGERED) {
            start_timer1();
        }
        
        CCP1IF = 0;
    }
    
    if(RAIF) {
        //a5 interrupt
        unsigned char vals = PORTA;
        // should we check here if the new val is 0 ?
        // so that we only trigger when it goes high to prevent false triggering
        
        // manual reset
        stop_timer1();
        reset_timer1();
        
        counter = 0;
        state = ARMED;
        
        counter_changed = true;
       
        RAIF = 0;
    }
    
    if(INTF) {
        //a2 interrupt
        if(!debounce) {
            if (state == ARMED) {
                start_timer1();
                state = TRIGGERED;
                counter = 0;
                counter_changed = true;
            } else if (state == TRIGGERED) {
                stop_timer1();
                state = STOPPED;
                counter_changed = true;
            } else if (state == STOPPED) {
                if (continue_on_stop()) {
                    start_timer1();
                    state = TRIGGERED;
                    counter_changed = true;
                }
            }
            
            TMR0 = 0;
            debounce = 1;
            OPTION_REGbits.T0CS = 0;
        }
        INTF = 0;
    }
    
    if (T0IF) {
        if(++debounce == 5) {
            debounce = 0;
            OPTION_REGbits.T0CS = 1;
            TMR0 = 0;
        }
        T0IF = 0;
    }
}

void main(void) {
    setup_shift_register();
    setup_segment_ctr();
    
    setup_timer1();
    
    setup_switch_inputs();
    
    setup_interrupts();
    
    setup_debounce_timer();
    
    reset_timer1();
    reset_segment_ctr();
    state = ARMED;
    
    unsigned char output_array[4] = {
        0b11111100,
        0b11111101,
        0b11111100,
        0b11111100
    };
    
    start();
    while(1) {
        if(counter_changed) {
            int tmp_counter = counter;
            counter_changed = false;
            
            compute_output(tmp_counter, output_array);
        }
        
        output_counter(output_array);
    }
}
