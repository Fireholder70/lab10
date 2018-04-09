//------------------------------------------------------------------------------
// File:          dac.h
// Written By:    Jordan Hartung, Jeremy Zacharia
// Date Created:  3/28/2018
// Description:   JoyStick and Temp
// Compiler:	  XC32 v1.34
// Target:        PIC32MX340F512H
// Schematic(s):  Drawing Lab9
//------------------------------------------------------------------------------


#ifndef _SERVO_H
#define _SERVO_H_

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <xc.h>


void servo_angle(uint8_t angle);


#define SERVO_1        PORTDbits.RD0     // servo 1 pin
#define SERVO_1_TRIS   TRISDbits.TRISD0  // servo 1 trisate


#endif