#include "pwm.h"

void PWM_init()
{
    T2CON = 0x00;
    T2CONbits.TCKPS = 0b010; //1:4 prescalar
    PR2 = 50000; // period
    TMR2 = 0;

    OC1CON = 0x00000000;
    OC1CONbits.OCM = 0b110; //PWM mode on OC1; Fault pin disabled
    OC1CONbits.OCTSEL = 0; //Timer2 selected
    OC1R = 25000; //50% duty cycle
    OC1RS = 25000;

    OC2CON = 0x00000000;
    OC2CONbits.OCM = 0b110; //PWM mode on OC1; Fault pin disabled
    OC2CONbits.OCTSEL = 0; //Timer2 selected
    OC2R = 25000; //50% duty cycle
    OC2RS = 25000;

    IFS0CLR = 0x00000100;                    // Clear the T2 interrupt flag
    IEC0SET = 0x00000100;                    // Enable T2 interrupt
    IPC2SET = 0x0000001C;                    // Set T2 interrupt priority to 7
    T2CONSET = 0x8000;                       // Enable Timer2
    OC1CONSET = 0x8000;                      // Enable OC1
    OC2CONSET = 0x8000;                      // Enable OC2
}