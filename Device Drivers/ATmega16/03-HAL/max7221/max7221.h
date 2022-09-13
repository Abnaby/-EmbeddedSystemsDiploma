/**
* @file max7221.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-13
*
*/
#ifndef max7221__H 
#define max7221__H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* User Configuration
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/
// @ref Size_Macro
#define MAX7221_DIG_0_ONLY              (0x00)
#define MAX7221_DIG_0_1                 (0x01)
#define MAX7221_DIG_0_2                 (0x02)
#define MAX7221_DIG_0_3                 (0x03)
#define MAX7221_DIG_0_4                 (0x04)
#define MAX7221_DIG_0_5                 (0x05)
#define MAX7221_DIG_0_6                 (0x06)
#define MAX7221_DIG_0_7                 (0x07)


/******************************************************************************
* Typedefs
*******************************************************************************/
typedef enum
{
    MAX7221_OFF,
    MAX7221_ON 

}MAX7221_Disp_State ; 

typedef enum
{
	DISP_ONE_ONLY			= MAX7221_DIG_0_ONLY , 
	DISP_FROM_0_T_1			= MAX7221_DIG_0_1	,
	DISP_FROM_0_T_2			= MAX7221_DIG_0_2	,
	DISP_FROM_0_T_3			= MAX7221_DIG_0_3	,
	DISP_FROM_0_T_4			= MAX7221_DIG_0_4	,
	DISP_FROM_0_T_5			= MAX7221_DIG_0_5	,
	DISP_FROM_0_T_6			= MAX7221_DIG_0_6	,
	DISP_FROM_0_T_7			= MAX7221_DIG_0_7	
}MAX7221_Disp_Size ;
 
typedef struct
{
	MAX7221_Disp_Size selecrDispSize ; // Select from @ref MAX7221_Disp_Size 
}MAX7221_Config;

/******************************************************************************
* Variables
*******************************************************************************/

/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief Init MAX7221 With Default Parameters 
 * @param ptr_customConfig pointer to struct hold size of display 
 * @return void 
 */
void MAX7221_Init(MAX7221_Config *ptr_customConfig) ; 
/**
 * @brief Send Data to MAX7221
 * 
 * @param copy_u8data data to be displayed 
 * @param copy_u8DispNumber disp data on segment number 0 --> 7
 * @return void 
 */
void MAX7221_SendData(u8 copy_u8data, u8 copy_u8DispNumber) ;
/**
 * @brief Set Display State 
 * 
 * @param copy_state see options on @ref MAX7221_Disp_State
 * @return void 
 */
void MAX7221_DispState(MAX7221_Disp_State copy_state) ; 

/**
 * @brief This Function Set Intensity of Display 
 * 
 * @param copy_u8Brightness Intensity Level 0-->15
 * @return void 
 */
void MAX7221_Disp_Intensity(u8 copy_u8Brightness) ;



#endif
/************************************* End of File ******************************************/