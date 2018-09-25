#ifndef BLDC_H
#define BLDC_H

/*****************************************************************************/
//  File:       bldc.h
/*****************************************************************************/

#include "p33fj16mc102.h"
#include "GenericTypeDefs.h"


#define _ISR_NO_PSV __attribute__((__interrupt__,auto_psv))
#define LED2            PORTBbits.RB8   //D6 LED

#endif
