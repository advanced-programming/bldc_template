/*****************************************************************************/
//  File:       initBoard.c
/*****************************************************************************/
#include "initBoard.h"
#include <xc.h>
/********************Setting Configuration Bits *********************************/
_CONFIG2(POSCMOD_NONE & LPOL_ON & OSCIOFNC_ON & IOL1WAY_OFF & FCKSM_CSECMD & FNOSC_FRCPLL & PWMPIN_ON & PWMLOCK_ON & IESO_OFF);

//_CONFIG1(       PLLKEN_ON & FWDTEN_OFF & ICS_PGD3 & HPOL_ON & GWRP_OFF & GCP_OFF);
_CONFIG1(0x3FFF & PLLKEN_ON & FWDTEN_OFF & ICS_PGD3 & HPOL_ON & GWRP_OFF & GCP_OFF);
/*****************************SYSTEM DEFINES***********************************/


void initOscillator(void){
    __builtin_write_OSCCONH(0x01);
    __builtin_write_OSCCONL(0x01);
    while(OSCCONbits.COSC != 0b001);
    // Wait for PLL to lock
    while(OSCCONbits.LOCK != 1);
    /* disable wdt */
    RCONbits.SWDTEN = 0;
}

void initIOs(void){
   //Push Button port
    TRISAbits.TRISA3 = 1;

    //Led ports
    TRISAbits.TRISA2 = 0;
    TRISBbits.TRISB8 = 0;

}
