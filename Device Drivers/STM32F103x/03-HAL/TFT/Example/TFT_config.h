/**
* @file TFT_config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-10
*
*/
#ifndef TFT_CONFIG_H 
#define TFT_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/
//TFT LCD SIZE 
#define TFT_WIDTH         132
#define TFT_HEIGHT        162

//TFT PINS
#define TFT_A0_PIN       		PORTA,PIN0
#define TFT_RST_PIN       		PORTA,PIN1
#define TFT_SLAVE_SLCT_PIN     	PORTA,PIN4
//Choose the mode
/**
 * TFT_RGB_4_4_4     
 * TFT_RGB_5_6_5     
 * TFT_RGB_6_6_6     
 * */
#define TFT_COLOR_MODE    TFT_RGB_5_6_5




#endif
/************************************* End of File ******************************************/
