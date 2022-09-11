/**
* @file LCD.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-08
*
*/
#ifndef LCD__H 
#define LCD__H 





/******************************************************************************
* Includes
*******************************************************************************/



/******************************************************************************
* User Configuration
*******************************************************************************/


#define LCD_Mode	_4_WIRE_MODE

/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/
#define DISP_OFF	0

#define DISP_ON		1


/******************************************************************************
* Configuration Constants
*******************************************************************************/
#define addString(x) ((u8 *)x)
#define LCD_HOME	0,0



/******************************************************************************
* Macros
*******************************************************************************/


/******************************************************************************
* Typedefs
*******************************************************************************/

/**
 * @brief LCD_Config is a struct that holds the configuration of LiquidCrystal display.
 * 
 */
typedef struct
{
    u8                  LCD_SIZE_Rows    ;      // Inset Number of Rows in your LCD
                                                // Option 1 or 2 
    u8                  LCD_SIZE_Cols    ;      // Insert Number of Columns in your LCD
    u8                  *LCD_PortPins    ;      // Pointer to 1D Array that holds 
                                                // < Enable,rsPort,d1Port,d1Pin ....... d7Port,d7Pin> for _8_WIRE_MODE
                                                // < Enable,rsPort, rwPin,d4Port,d4Pin ....... d7Port,d7Pin> for _4_WIRE_MODE
}LCD_Config;


typedef enum
{
	CURS_OFF = 0x0C		,
	CURS_ON	 = 0x0E		,
	CURS_ON_BLINK = 0x0F				
}cursorType; 
/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/


/**
 * @brief This function used to initialize LCD
 * 
 * @param LCD_Config* pointer to struct @ref  LCD_Config
 */

void LCD_voidInit(LCD_Config*); 

/**
 * @brief This Function Used to print char on screen
 * 
 * @param ptrCnfg pointer to LCD that print data to it
 * @param copy_u8data data to be printed 
 */
void LCD_voidSendChar(LCD_Config* ptrCnfg , u8 copy_u8data);


void LCD_voidSendString(LCD_Config* ptrCnfg , u8* ptr_u8data);

void LCD_voidSendStringAt(LCD_Config* ptrCnfg , u8* ptr_u8data, u8 x , u8 y );
 

void LCD_voidSendString(LCD_Config* ptrCnfg , u8* ptr_u8data);


void LCD_voidGotoXY(LCD_Config* ptrCnfg , u8 x , u8 y);
void LCD_voidClear(LCD_Config* x);

void LCD_voidSetCursorType(LCD_Config*  ptrLCD ,cursorType copy_cursorType); 
void LCD_voidSetDisplayState(LCD_Config*  ptrLCD ,u8 displayState); 
void LCD_voidStoreCustomChar(LCD_Config*  ptrLCD ,u8* ptrToArray, u8 copy_u8CharIndex);
void LCD_voidDispCustomChar(LCD_Config*  ptrLCD , u8 storedCharIndex);
#endif
/************************************* End of File ******************************************/