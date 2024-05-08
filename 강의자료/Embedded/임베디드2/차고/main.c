/************************************************************************/
/*	Name	: main.c													*/
/*	Modified and programmed by YS CHI									*/
/*	Date : 2004. 06. 04 first edited									*/
/*  Modified by Hong  _hong_20240312									*/
/*	Description : main (ARM7TDMI 32-BIT MCU)       	           		     */
/*				CAMERA  LG Electronics PROJECTION 						*/
/************************************************************************/
    

#include "main.h"
//#pragma import(__use_no_semihosting_swi)

extern _BYTE_FIQ FIQ_ALL;

extern U8 I2C_BYTE_BUFFER;	
extern U32 IFLASH_START_ADDR;
extern U16 START_ADDR_COUNT;
extern U32 DW_BUFFER;
extern U32 CS2_START_ADDR;



void Main(void)	
{	
	U8 q;
		
	INIT_PORT();					// PORT setting
        INIT_ISR();					// INITIAL_ISR
	
	IFLASH_START_ADDR =0x01F43FFC;			// FINAL ADDRESS(4092) sram boot 0x01F43FFC FLASH 0x43FFC
	READ_IFLASH(); 
	if(DW_BUFFER!=0x0FFF05FF) {	
		IFLASH_START_ADDR = 0x01F40000;		// SECTOR 513 (sram boot 0x01F40000 FLASH 0x040000)
 		WRITE_IFLASH();	 			// SRAM -> FLASH
	} // flash download

	
//	INIT_LCD(); 					// LCD DISPLAY  _hong_20240312   
	
	CLOCK_MASTER();					// CLOCK GENERATOR
	DAC_MASTER();					// DAC OUTPUT 	
//	Delay(1000);					// FOR LCD DISPLAY(DAC) _hong_20240312
	Delay(10);					    // FOR LCD DISPLAY(DAC)	_hong_20240312

/* 	_hong_20240312
    for(q=0;q<32;q++){
		IFLASH_START_ADDR =(0x01F7BE00+(0x200*q));		// SECTOR 991:0x01F7BE00 (32SECTOR) FLASH 0x7BE00
		READ_IFLASH(); 
	
		if(DW_BUFFER!=0xFFFFFFFF) {
			IFLASH_START_ADDR=(0x01F7BE00+(0x200*q));	// SECTOR 991:0x01F7BE00 (32SECTOR) FLASH 0x7BE00
			ERASE_IFLASH();
		} // end of if	
	} // end of flash_buffer clear	
*/
/* _hong_20240312 --> */
    for(q=0;q<32;q++){
		IFLASH_START_ADDR =(0x01F7BE00+(0x200*q));		// SECTOR 991:0x01F7BE00 (32SECTOR) FLASH 0x7BE00
		READ_IFLASH(); 
	
		if(DW_BUFFER!=0xFFFFFFFF) {
			IFLASH_START_ADDR=(0x01F7BE00+(0x200*q));	// SECTOR 991:0x01F7BE00 (32SECTOR) FLASH 0x7BE00
			ERASE_IFLASH();
		} // end of if	
	} // end of flash_buffer clear
/* <-- _hong_20240312  */
  
        TIMER2_SETT();	 				// THERMISTOR Interval 450msec	
	_G_INT_E_;					// INTERRUPT ENABLE
	_M_INT_S_(INT_TMC2); 				// THERMISTOR Interval 450msec Interraupt	
	
	LCD_CLEAR();
        _M_INT_S_(INT_EINT2); 				// EXT2 PHOTO-INT1	
        _M_INT_S_(INT_EINT3); 				// EXT3 PHOTO-INT2
        
        rPCON7|=0x0FC0;					// PWM MODE
        TIMER3_PWM();
        TIMER4_PWM();
        TIMER5_PWM();
        
        while(1)  
        {
      	if(FIQ_ALL.FLAG_EINT2==1) 
        	{
        		FIQ_ALL.FLAG_EINT2=0;
        		I2C_BYTE_BUFFER=0x80;		// 1LINE 1ST "P"
			CMDWRITE();			
        		I2C_BYTE_BUFFER=0x50;
			DATWRITE();
        		I2C_BYTE_BUFFER=0x81;		// 1LINE 2ND "1"
			CMDWRITE();
			I2C_BYTE_BUFFER=0x31;
			DATWRITE();
        		Delay(1000); 			// FOR LCD DISPLAY (F:136msec S:1210msec) 
        	} // end of if(PHOTO-1 FLAG)
        	
        	else {
        		I2C_BYTE_BUFFER=0x80;		// 1LINE 1ST BLANK
			CMDWRITE();			
        		I2C_BYTE_BUFFER=0xA0;
			DATWRITE();
        		I2C_BYTE_BUFFER=0x81;		// 1LINE 2ND BLANK
			CMDWRITE();
			I2C_BYTE_BUFFER=0xA0;
			DATWRITE();
        	} // end of else(PHOTO-1 FLAG)		        	
        	
        	if(FIQ_ALL.FLAG_EINT3==1) 
        	{
        		FIQ_ALL.FLAG_EINT3=0;
        		I2C_BYTE_BUFFER=0x82;		// 1LINE 3RD BLANK
			CMDWRITE();			
        		I2C_BYTE_BUFFER=0x50;
			DATWRITE();
        		I2C_BYTE_BUFFER=0x83;		// 1LINE 4TH BLANK
			CMDWRITE();
			I2C_BYTE_BUFFER=0x32;
			DATWRITE();
			Delay(1000); 			// FOR LCD DISPLAY (F:136msec S:1210msec) 
        	} // end of if(PHOTO-2 FLAG)
        	
        	else {
        		I2C_BYTE_BUFFER=0x82;		// 1LINE 3RD BLANK
			CMDWRITE();			
        		I2C_BYTE_BUFFER=0xA0;
			DATWRITE();
        		I2C_BYTE_BUFFER=0x83;		// 1LINE 4TH BLANK
			CMDWRITE();
			I2C_BYTE_BUFFER=0xA0;
			DATWRITE();
        	} // end of else(PHOTO-2 FLAG)	
        	
        	THERMISTOR_DISPLAY();
        	     	
      		NOP_1U();
	
	} // end of while(main loop)

} // end of Main(ARM PROCESSOR)


/* 
REFERENCE NOTE
=====================================================
EXCEPTION    Address  TO RETURN
=====================================================
UNDEFINED       +4   MOVS PC,R14
SOFTWARE        +4   MOVS PC,R14
PREFETCH ABORT  +4   SUSS PC,R14,#4
DATA ABORT      +8   SUBS PC,R14,#4 (NOT RE-EXECUTED)
                     SUBS PC,R14,#8 (RE-EXECUTED)
IRQ	        +4   SUBS PC,R14,#4
FIQ 		+4   SUBS PC,R14,#4 	 	     
=====================================================
*/                