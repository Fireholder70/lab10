//--------------------------------------------------------------------------
// File:          adc.c
// Written By:    Jordan Hartung, Jeremy Zacharia
// Date Created:  3/28/2018
// Description:   JoyStick and Temp
// Compiler:	  XC32 v1.34
// Target:        PIC32MX340F512H
// Schematic(s):  Drawing Lab9
//--------------------------------------------------------------------------


#include "servo.h"

void servo_angle(uint8_t angle)
{
    uint16_t time = 0;

    time = (.0056* angle +1.5)*1000;
    SERVO_1 = 1;
    usDelay(time);
    SERVO_1 = 0;

}
