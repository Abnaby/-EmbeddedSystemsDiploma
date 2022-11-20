/**
* @file KeyPad.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-06
*
*/
#ifndef KeyPad__H 
#define KeyPad__H 


/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* User Configuration
*******************************************************************************/

#define KEYPAD_NOT_PRESSED_RETURN       200

/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/
#define newKeyMap(x) ((u8*)x)



/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/



/**
 * @brief This Struct used to config. KeyPad MxN
 * 
 */
typedef struct 
{
    u8                  NumOfRows                ;          // Number of Rows in KeyPad - Configured as Output
    u8                  NumOfCols                ;          // Number of Columns in KeyPad - Configured as Input-PullUp
    u8                  *Port_Pin_Rows           ;          // Pointer to 1D Array Hold Rows Ports/Pins - like u8 arr[] = {PORTA,PIN0,PORTB,PIN1,....}
    u8                  *Port_Pin_Cols           ;          // Pointer to 1D Array Hold Columns Ports/Pins - like u8 arr[] = {PORTA,PIN0,PORTB,PIN1,....}
    u8                  *KeysPattern             ;          // Pointer to 2D Array Hold Patterns on KeyPad and pass it using keyword newKeyMap(arrName)
}KeyPad_cnfg; 











/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This Fuction Used to Init Keypad 
 * 
 * @param KeyPad_cnfg* pointer to configuration struct @ref KeyPad_cnfg
 * @return void
 * 
 */
void HAL_KeyPadInit(KeyPad_cnfg*);


/**
 * @brief This Fuction Used to get Pressed Key. 
 * 
 * @param KeyPad_cnfg* pointer to configuration struct @ref KeyPad_cnfg
 * @return void
 * 
 */
u8 HAL_KeyPadGetPressedKey(KeyPad_cnfg* ptr_keyPadCfg);



#endif
/************************************* End of File ******************************************/