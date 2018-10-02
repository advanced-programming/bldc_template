/*****************************************************************************/
//  File:       init_bldc.c
//  This file implements the initialization routines to implement a bldc controller.
//  It implements the initialization for: ADC,PWM
//  Includes:
//      void InitADC10(void)
//      void InitMCPWM(void)
//
//  TO COMPLETE BY THE STUDENT
/*****************************************************************************/

#include "init_bldc.h"

/******************************************************************************
* Function:     InitADC10(void)
*
* Output:       None
*
* Overview:     Initializes the ADC module to operate in simultaneous mode
*               sampling terminals. The ADC channels are
*               assigned as follows:
*               CH1->AN3 BEMF PHASE A
*               CH2->AN4 BEMF PHASE B
*               CH3->AN5 BEMF PHASE C
*               ADC resulting samples are formatted as unsigned 10-bits
*               Right-justified
*
* Note:         None
*******************************************************************************/
void InitADC10(void)
{

    AD1PCFGL = 0x0; //Port pin multiplexed with AN0-AN8 in Analog mode

    AD1CON1 = 0x006C;   //ADC is off
                        //Continue module operation in Idle mode
                        //10-bit, 4-channel ADC operation
                        //Data Output Format bits Integer (0000 00dd dddd dddd)
                        //011 = Motor Control PWM interval ends sampling and starts conversion
                        //Samples CH0, CH1, CH2, CH3 simultaneously when CHPS<1:0> = 1x
                        //Sampling begins immediately after last conversion SAMP bit is auto-set.

    AD1CHS123 = 0x0001; //MUX B CH1, CH2, CH3 negative input is VREF-
                        //MUX B CH1 positive input is AN0, CH2 positive input is AN1, CH3 positive input is AN2
                        //MUX A CH1, CH2, CH3 negative input is VREF-
                        //MUX A CH1 positive input is AN3, CH2 positive input is AN4, CH3 positive input is AN5


    AD1CHS0 = 0x0000;   //MUX B Channel 0 negative input is VREF-
                        //MUX B Channel 0 positive input is AN0
                        //MUX A Channel 0 negative input is VREF-
                        //MUX A Channel 0 positive input is AN0

    AD1CSSL = 0x0000;   //Skip all ANx channels for input scan

    AD1CON3 = 0x0003;   //ADC Clock derived from system clock
                        //Autosample time time bits = 0 TAD since PWM is controlling sampling time
                        //TAD = 4*TCY, TAD = 271.37 nSec

    AD1CON2 = 0x0300;   //ADREF+ = AVDD ADREF- = AVSS
                        //Do not scan inputs
                        //1x = Converts CH0, CH1, CH2 and CH3
                        //A/D is currently filling buffer 0x0-0x7
                        //Interrupts at the completion of conversion for each sample/convert sequence
                        //Always starts filling buffer from the beginning
                        //Always uses channel input selects for Sample A

    AD1CON1bits.DONE = 0;   //Making sure that there is any conversion in progress
  //  IPC3bits.AD1IP = 5;     //Assigning ADC ISR priority
    IFS0bits.AD1IF = 0;     //Clearing the ADC Interrupt Flag
 //   IEC0bits.AD1IE = 1;     //Enabling the ADC conversion complete interrupt
    AD1CON1bits.ADON = 1;   //Enabling the ADC module

}


/******************************************************************************
* Function:     InitMCPWM(void)
*
* Output:       None
*
* Overview:     Initializes the PWM module to operate in center-aligned mode.
*               PWM terminals are configured in independent mode.
*               PWM time base is 67.8 nSec.
*
*
* Note:         P1TPER must be configured by the student
*******************************************************************************/
void InitMCPWM(void)
{

    P1TCONbits.PTSIDL = 1;      // PWM time base halted in CPU IDLE mode
    P1TCONbits.PTOPS = 0;       // PWM time base 1:1 postscale
    P1TCONbits.PTCKPS = 0;      // PWM time base 1:1 prescale
    P1TCONbits.PTMOD = 2;       // Center Aligned with single interrupt mode per PWM period
    P1OVDCON = 0x0000;      // set all PWM outputs to LOW using OVD
    
    // enable PWM outputs
    //__builtin_write_PWMSFR(&PWM1CON1, 0x0777, &PWM1KEY);//On the target only
    PWM1CON1=0x0777;  // For simulation only


    
    P1SECMPbits.SEVTDIR = 0;    // trigger ADC when PWM counter is in upwards dir
    P1SECMPbits.SEVTCMP = 0;    // generates a trigger event for the ADC
                                // when PWM time base is counting upwards
                                // just before reaching the PTPER value
                                // causing a sampling in the middle of the
                                // pulse

    PWM1CON2 = 0x0000;          // 1:1 postscale values
                                // Updates to the active PxDCy registers
                                // are sync to the PWM time base
                                // Output overrides via the PxOVDCON register occur
                                // on the next TCY boundary
                                // Updates from duty cycle and period buffer registers
                                // are enabled

    IPC14bits.PWM1IP = 4;       // PWM Interrupt Priority 4
    IFS3bits.PWM1IF=0;          // Clearing the PWM Interrupt Flag

    //faultA enabled, FaultB disabled.  Latch mode.
    //__builtin_write_PWMSFR(&P1FLTACON, 0x0007, &PWM1KEY);//On the target only
    //__builtin_write_PWMSFR(&P1FLTBCON, 0x0080, &PWM1KEY);//On the target only
    P1FLTACON=0x0007;   // For simulation only
    P1FLTBCON= 0x0080;  // For simulation only


    //clear the fault interrupt flags
    IFS3bits.FLTA1IF = 0;
    IEC3bits.FLTA1IE = 1;

    //setup comparator on pin2, AN3, C2INB,C1IND,RP1,RB1
    //The comparator monitors the motor current and triggers the PWM fault
    //The comparator pin and FAULT pin are connected externally

    CM1CON = 0x4091;        //setup the comparator module
    CM1CONbits.CPOL = 0;

    //set the comparator reference and trigger point
    CVRCON = 0x0280;        //3.3* (CVR/24)
    CVRCONbits.CVR = 15;    //2.37V -> 0.95A    (Conversion factor is 2.5V/A)

    //map RP7 to comparator C1OUT
    RPOR3bits.RP7R = 1;
    TRISBbits.TRISB7 = 0;

    //enable the comparator
    CM1CONbits.CON =1;

    //enable the MC PWM module
    P1TCONbits.PTEN = 1;
}

