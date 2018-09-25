/******************************************************************************
 * Description: blcd motor control
 *  
 * Author       Date    				Comments
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Serge Hould  September 6  2018       v1.0 Template for bldc motor controller	
 * 
 * YOU MUST GIVE A NEW VERSION EVERY WEEK
 ******************************************************************************/

#include "bldc.h"
#include "initBoard.h"
#include "init_bldc.h"

/******************************************************************************
* Function:     main(void)
*
* Output:       None
*
* Overview:     
*
* Note:         None
*******************************************************************************/
int main(void)
{
    // Configure Oscillator to operate the device with internal FRC and PLL at 14.74Mhz
    initOscillator();
    INTCON1bits.NSTDIS = 1;         //Disable nested interrupts
    
    /****************** Functions init *********************************/
    initIOs();


    /****************** Infinite Loop *********************************/
    while(1)
    {   
        // Calls all tasks    
        
    }//end while(1)

 return 0;
}//end of main function

