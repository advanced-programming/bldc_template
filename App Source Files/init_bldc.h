#ifndef INIT_BLDC_H
#define INIT_BLDC_H

#include "p33fj16mc102.h"
#include "GenericTypeDefs.h"


/*FREQUENCY SYSTEM DEFINES*/
#define FCY         14740000                        //internal FRC with x4 PLL -> 7.37MHz*4/2 = 14.740 Mhz
void InitMCPWM(void);
void InitADC10(void);

#endif
