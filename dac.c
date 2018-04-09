//--------------------------------------------------------------------------
// File:          adc.c
// Written By:    Jordan Hartung, Jeremy Zacharia
// Date Created:  3/28/2018
// Description:   JoyStick and Temp
// Compiler:	  XC32 v1.34
// Target:        PIC32MX340F512H
// Schematic(s):  Drawing Lab9
//--------------------------------------------------------------------------


#include "dac.h"

void DAC_send(uint16_t volt)
{
	/*
	 * DAC send
	 */
    upperDAC = 16 | (volt >> 6);
    lowerDAC =  (volt << 2);
    DAC_CS = 0;
        SPI2_TransmitByte(upperDAC);
        SPI2_TransmitByte(lowerDAC);
        DAC_CS = 1;

}
