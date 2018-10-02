/*****************************************************************************/
//  File:       traps.c
//  This file implements  the _FLTA1Interrupt to detect overcurrent. 
//  An over-current trap is already implemented. In case of an overcurrent for 
//  more than 10 seconds, the motor is stopped and LED2 turns on. 
//  The motor never restarts because the ISR will trap the CPU.
//
//  Includes:
//      _FLTA1Interrupt(void)
//
/*****************************************************************************/

#include "bldc.h"

/* WARNING, NEVER DISABLE THE FLTA ISR TO AVOID OVERCURRENT AND OVERHEATING */
/******************************************************************************
* Function:     _FLTA1Interrupt(void)
*
* Output:       None
*
* Overview:     In case of an overcurrent, the motor is stopped and never restarts
 *              because the ISR will trap.
*
* Note:         None
*******************************************************************************/

#define DELAY_OVCURRENT     50000      // Around 2 sec
#define DELAY_BLINK         15000      // 0.6 sec

void __attribute__((__interrupt__,auto_psv)) _FLTA1Interrupt(void)
{
 
    static long skip_blink=0, skip=0;
    
    // about 10 second skip delay before entering into fault SH
    if(skip++ >= DELAY_OVCURRENT){
            skip = DELAY_OVCURRENT;
            /*Blink at about 0.6 sec*/
            if(skip_blink++ > DELAY_BLINK){
                skip_blink = 0;
                LED2 ^=1 ;
            }
    }
    else {
        LED2 =0 ;
        IFS3bits.FLTA1IF = 0;           //clear interrupt flag
    }

}
