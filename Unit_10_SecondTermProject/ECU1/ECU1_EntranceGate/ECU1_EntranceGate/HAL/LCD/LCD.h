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


/**
 * @brief cursorType is enum holds the available options for @param
 * 
 */
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
 * @param LCD_Config* pointer to struct @ref ursorType copy_cursorType @ref LCD_voidSetCursorType functions
 */

void LCD_voidInit(LCD_Config*); 

/**
 * @brief This Function Used to print char on screen
 * 
 * @param ptrCnfg pointer to your LCD configuration
 * @param copy_u8data data to be printed 
 * @return void
 */
void LCD_voidSendChar(LCD_Config* ptrCnfg , u8 copy_u8data);

/**
 * @brief This Function Used to display string in screen 
 * 
 * @param ptrCnfg pointer to your LCD configuration
 * @param ptr_u8data pointer to string pass it using addString("yourString") 
 * @return void

 */
void LCD_voidSendString(LCD_Config* ptrCnfg , u8* ptr_u8data);

/**
 * @brief this function used to display string at X,Y position 
 * 
 * @param ptrCnfg pointer to your LCD configuration
 * @param ptr_u8data pointer to string pass it using addString("yourString")
 * @param x         col number 
 * @param y         row number 
 */
void LCD_voidSendStringAt(LCD_Config* ptrCnfg , u8* ptr_u8data, u8 x , u8 y );
 


/**
 * @brief This function used to go to in specific row and column 
 * 
 * @param ptrCnfg pointer to your LCD configuration
 * @param x      Column Number 
 * @param y      Row Number 
 * @return void
 *
 */
void LCD_voidGotoXY(LCD_Config* ptrCnfg , u8 x , u8 y);

/**
 * @brief This Function Used to clear screen and goto home
 * 
 * @param x pointer to your LCD configuration
 * @return void
 * 
 */
void LCD_voidClear(LCD_Config* x);

/**
 * @brief This Function Used to select cursor type 
 * 
 * @param ptrLCD pointer to your LCD configuration
 * @param copy_cursorType select from @ref cursorType enum
 * @return void
 * 
 */
void LCD_voidSetCursorType(LCD_Config*  ptrLCD ,cursorType copy_cursorType); 

/**
 * @brief This Function Used to Select Display State
 * 
 * @param ptrLCD pointer to your LCD configuration
 * @param displayState select from  
 *                                  DISP_OFF to turn off screen 
 *                                  DISP_ON  to turn on screen
 * @return void
 *
 */
void LCD_voidSetDisplayState(LCD_Config*  ptrLCD ,u8 displayState); 
/**
 * @brief This function used to store custom char in CGRAM before display it 
 * 
 * @param ptrLCD pointer to your LCD configuration
 * @param ptrToArray pointer to custom char
 * @param copy_u8CharIndex give it index from 0 to 7 
 * @return void
 * 
 */
void LCD_voidStoreCustomChar(LCD_Config*  ptrLCD ,u8* ptrToArray, u8 copy_u8CharIndex);
/**
 * @brief This function used to display custom char
 * 
 * @pre use @ref LCD_voidStoreCustomChar before use this function used only one time for each index
 * @param ptrLCD pointer to your LCD configuration
 * @param storedCharIndex the index of char 0->7 
 */
void LCD_voidDispCustomChar(LCD_Config*  ptrLCD , u8 storedCharIndex);
#endif
/************************************* End of File ******************************************/