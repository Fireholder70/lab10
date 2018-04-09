//------------------------------------------------------------------------------
// File:          dac.h
// Written By:    Jordan Hartung, Jeremy Zacharia
// Date Created:  3/28/2018
// Description:   JoyStick and Temp
// Compiler:	  XC32 v1.34
// Target:        PIC32MX340F512H
// Schematic(s):  Drawing Lab9
//------------------------------------------------------------------------------


#ifndef _DAC_H
#define _DAC_H_

#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <xc.h>

void DAC_send(uint16_t volt);

uint8_t upperDAC;
uint8_t lowerDAC;


#define DAC_CS        PORTFbits.RF1     // TFT Chip select pin (active low)
#define DAC_CS_TRIS   TRISFbits.TRISF1  // TFT Chip select trisate

#endif