//------------------------------------------------------------------------------
// File:          lab09.c
// Written By:    Jordan Hartung, Jeremy Zacharia
// Date Created:  3/28/2018
// Description:   Joy Stick and Temp
// Compiler:	  XC32 v1.34
// Target:        PIC32MX340F512H
// Schematic(s):  Drawing L08-01
//
// Revision History (date, initials, description)
//   4/04/2018, jmz5234, Joy Stick and Temp function
//------------------------------------------------------------------------------
#include "lab10.h"

/*
 * Function:	map()
 * Purpose:	Re-proportion a number in a given range to another range
 */

static long map(long x, long in_min, long in_max, long out_min, long out_max)
{
	return(x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

//------------------------------------------------------------------------------
// Function: main()
//------------------------------------------------------------------------------

void main(void)
{

	/*
	 * Initialize Code
	 */
	MCU_initialize();
	SPI_Init();
	TFT_Init();
	TOUCH_Init();

	/*
	 * Configure TFT:
	 *	background 
	 *	static buttons
	 */
	TFT_FillRectangle(0, 0, 240, 320, TFT_BLUE); //background color
	TFT_FillRectangle(0, 0, 75, 80, TFT_LIGHTGREY);
	TFT_FillRectangle(80, 0, 75, 80, TFT_LIGHTGREY);
	TFT_FillRectangle(160, 0, 80, 80, TFT_LIGHTGREY);
	TFT_DrawString(10, 30, "MAIN", TFT_BLACK, TFT_LIGHTGREY, 2);
	TFT_DrawString(98, 20, "JOY", TFT_BLACK, TFT_LIGHTGREY, 2);
	TFT_DrawString(88, 38, "STICK", TFT_BLACK, TFT_LIGHTGREY, 2);
	TFT_DrawString(176, 30, "TEMP", TFT_BLACK, TFT_LIGHTGREY, 2);

	//uint8_t temp_s = 0;
	/*
	 * Infinite While Loop:
	 * 
	 * Get touch coordinates
	 * Clear screen on screen change
	 * Screen task for appropriate screen state
	 *	1. Main
	 *	2. Joy Stick
	 *	3. Temperature
	 */
	while (1) {

           // DAC_send(50); //input 0-1023




		/* /*
		 * Sense touch coordinates
		 
		TOUCH_GetTouchPoints();
		if (touch_x > 0 && touch_x < 75 && touch_y > 0 && touch_y < 80) {
			screen = MAIN;
		} else if (touch_x > 80 && touch_x < 155 && touch_y > 0 && touch_y < 80) {
			screen = JSTICK;
		} else if (touch_x > 160 && touch_x < 240 && touch_y > 0 && touch_y < 80) {
			screen = TEMP;
		}


		/*
		 * Clear screen on screen state change
		 
		if (old_screen != screen) {
			TFT_FillRectangle(0, 80, 240, 240, TFT_BLUE);
			if (screen == DAC)
                 *       {
                 *          TFT_FillRectangle(10,90,60,60, TFT_GREEN);
                            TFT_FillRectangle(80,90,60,60, TFT_GREEN);
                 *          TFT_FillRectangle(150,90,60,60, TFT_GREEN);
                 *          TFT_FillRectangle(10,160,60,60, TFT_GREEN);
                 *          TFT_FillRectangle(80,160,60,60, TFT_GREEN);
                 *
                 *          TFT_DrawString (10, 90, "0%", TFT_BLACK, TFT_GREEN);
                 *          TFT_DrawString (80, 90, "25%", TFT_BLACK, TFT_GREEN);
                 *          TFT_DrawString (150, 90, "50%", TFT_BLACK, TFT_GREEN);
                 *          TFT_DrawString (10, 160, "75%", TFT_BLACK, TFT_GREEN);
                 *          TFT_DrawString (80, 160, "100%", TFT_BLACK, TFT_GREEN);
                         }
			}
			old_screen = screen;
		}


		/*
		 * Loop once through MAIN
		 * Continuous loop through JSTICK
		 * Continuous 4 second loop through Temp
		 
		if (screen == MAIN) {
			TFT_DrawString(10, 100, "CMPEN 352W", TFT_BLACK, TFT_BLUE, 2);
			TFT_DrawString(10, 135, "Lab 9", TFT_YELLOW, TFT_BLUE, 2);
			TFT_DrawString(10, 160, "Jordan Hartung", TFT_GREEN, TFT_BLUE, 2);
			TFT_DrawString(10, 200, "Jeremy Zacharia", TFT_PURPLE, TFT_BLUE, 2);
		} else if (screen == DAC) {

                 TFT_FillRectangle(0,200,255,10,TFT_BLACK);
                 if(touch_x >= 10 && touch_x <= 71 && touch_y >= 90 && touch_y <= 150)
                 * {
                 *      DAC_SEND(0);
                 * }
                 if(touch_x >= 80 && touch_x <= 140 && touch_y >= 90 && touch_y <= 150)
                 * {
                 *      DAC_SEND(256);
                 * }
                 if(touch_x >= 150 && touch_x <= 210 && touch_y >= 90 && touch_y <= 150)
                 * {
                 *      DAC_SEND(512);
                 * }
                 if(touch_x >= 10 && touch_x <= 71 && touch_y >= 160 && touch_y <= 220)
                 * {
                 *      DAC_SEND(767);
                 * }
                 if(touch_x >= 80 && touch_x <= 140 && touch_y >= 160 && touch_y <= 220)
                 * {
                 *      DAC_SEND(1023);
                 * }
			
		} else if (screen == TEMP && sample_temp == true) {
			
			temp_sense = (ADC_sample(8)*3.3 / 1024.0 - .5) / .01;
			
			printf("\n\nTem %d\r\n", temp_sense);
			sprintf(message, "Temp in F: %.02f", (temp_sense)*(9.0 / 5.0) + 32.0);
			uint8_t temp_sc = map(temp_sense, 0, 100, 80, 320);
			printf("\n\nTessm %d\r\n", temp_sc);
			TFT_DrawString(10, 150, message, TFT_BLACK, TFT_BLUE, 2);
			TFT_DrawString(10, 80, "100", TFT_BLACK, TFT_BLUE, 2);
			TFT_DrawString(10, 305, "0", TFT_BLACK, TFT_BLUE, 2);
			
			data[num].x= temp_s;
			data[num++].y = 320 - temp_sc;
			TFT_DrawPixel(temp_s++, 320 - temp_sc, TFT_YELLOW);
			sample_temp = false;
		} */
	}
} // end main()

//------------------------------------------------------------------------------
// Function: MCU_initialize()
// Params:   void
// Returns:  void
// Initialization code for the application
//------------------------------------------------------------------------------

void MCU_initialize(void)
{

	INTConfigureSystem(INT_SYSTEM_CONFIG_MULT_VECTOR);

	/* 
	 * Configure oscillators
	 */
	OSCCONbits.PBDIV = 0b11; // PBCLK is SYSCLK/8 = 10 MHz

	/*
	 *  Init UART 1 to communicate with PC
	 *  BAUD = 57600
	 */
	U1MODEbits.UEN = 0b00;
	U1MODEbits.PDSEL = 0b00; // 8-bit data, no parity
	U1MODEbits.STSEL = 0; // 1 stop bit
	U1BRG = 10; // PBCLK = 10 MHz so Baud rate = 56k
	U1STAbits.UTXEN = 1;
	U1STAbits.URXEN = 1;
	U1MODEbits.ON = 1; // Turn on UART
	// Configure Timer1 to interrupt every 1 ms
	T1CON = 0x00; // Disable timer, prescale = 1:1, source = PBCLK
	TMR1 = 0; // Clear timer count
	PR1 = 10000; // PBCLK is 10 MHz, so 10000 counts = 1 kHz
	IPC1bits.T1IP = 6; // Interrupt priority = 7 (highest priority)
	IPC1bits.T1IS = 3; // Subpriority = 3 (highest)
	IFS0bits.T1IF = 0; // Clear interrupt flag
	IEC0bits.T1IE = 1; // Enable interrupt
	T1CONbits.ON = 1; // Enable timer

	/*
	 * Timer 4
	 * 1ms configuration
	 */
	T4CON = 0x00; // Disable timer, prescale = 1:1, source =PBCLK
	T4CONbits.ON = 1; // enable timer
	TMR4 = 55536; // Initialize Timer4 value

	/*
	 * Tristate configuration
	 */
	DAC_CS_TRIS = TRIS_OUTPUT; // select for IO expander
        SERVO_1_TRIS = TRIS_OUTPUT; //set servo 1 pin to output


	/*
	 * TIMER2 and PWN
	 */


	T2CON = 0x00;
	T2CONbits.ON = 1;
	PR2 = 10000; // half period
	TMR2 = 0;
	
	//TRISDbits.TRISD10 = 0;
	OC1CON = 0x00000000;
	OC1CONbits.OCM = 0b110; //PWM mode on OC1; Fault pin disabled
	OC1CONbits.OCTSEL = 0; //Timer2 selected
	OC1R = 0xFF; //50% duty cycle
	OC1RS = 0xFF;
	OC1CONbits.ON = 1;

    //OpenOC1( OC_ON | OC_TIMER2_SRC | OC_PWM_FAULT_PIN_DISABLE, 0, 0);
    //OpenTimer2( T2_ON | T2_PS_1_1 | T2_SOURCE_INT, 0xFFFF);

    //SetDCOC1PWM(10000);


	/*
	 * Global Variable Configuration
	 */
	rad = 8;
	old_screen = 3;
	mscount = secondcount = 0;
	sample_temp = true;
	//screen = TEMP;
	num = 0;

	ADC_init();

	/*
	 *  Enable global interrupts
	 */
	INTEnableInterrupts();

} // end MCU_initialize()

//------------------------------------------------------------------------------
// Function: _mon_putc()
// Params:   c; character to send to stdout
// Returns:  void
// Redfine _mon_putc so stdout goes to UART
//------------------------------------------------------------------------------

void _mon_putc(char c)
{

	while (U1STAbits.UTXBF); // wait for transmit buffer to be available
	U1TXREG = c;
} // end _mon_putc()



//------------------------------------------------------------------------------
// Function: Timer1Handler()
// Params: void
// Returns: void
// Interrupt handler for Timer 1
//------------------------------------------------------------------------------

void __ISR(_TIMER_1_VECTOR, IPL7SOFT) Timer1Handler(void)
{
	IFS0bits.T1IF = 0; // Clear interrupt flag
	mscount++;
        if (mscount == 20);
        {
            if(SERVO_1 == 0)
            {
                SERVO_1 = 1;
            }
            else
            {
                SERVO_1 = 0;
            }
            //servo_angle(0);
            mscount = 0;
        }
	
}


unsigned int Pwm; // Variable to store calculated PWM value
unsigned char Mode = 0; // Variable to determine ramp up or ramp down

void __ISR(_TIMER_2_VECTOR, ipl7) T2_IntHandler(void)
{
	if (Mode) {
		if (Pwm < 0xFFFF) // Ramp up mode
		{
			Pwm++; // If the duty cycle is not at max, increase 
			OC1RS = Pwm; // Write new duty cycle
		} else {
			Mode = 0; // PWM is at max, change mode to ramp down
		}
	}// End of ramp up
	else {
		if (!Pwm) // Ramp Down mode
		{
			Pwm--; // If the duty cycle is not at min, increase
			OC1RS = Pwm; // Write new duty cycle
		} else {
			Mode = 1; // PWM is at min, change mode to ramp up
		}
	} // End of ramp down
	// Insert user code here
	IFS0CLR = 0x0100; // Clearing Timer2 interrupt flag
}