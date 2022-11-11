/**
* @file TFT_private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-10
*
*/
#ifndef TFT_PRIVATE_H 
#define TFT_PRIVATE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/
//Config
#define TFT_GET_HIGH_BYTE   8
#define TFT_GET_LOW_BYTE    0X00FF

//TFT LCD COMMAND
#define TFT_NOP_CMD         0x00
#define TFT_SWRESET_CMD     0x01    /*  Software Reset */
#define TFT_RDDID_CMD       0x04    /*  Read Display ID */
#define TFT_RDDST_CMD       0x09    /*   Read Display Status    */
#define TFT_SLPIN_CMD       0x10    /*  Sleep In */
#define TFT_SLPOUT_CMD      0x11    /*  Sleep Out   */
#define TFT_PTLON_CMD       0x12    /*  Partial Display Mode On */
#define TFT_NORON_CMD       0x13    /*  Normal Display Mode On  */
#define TFT_INVOFF_CMD      0x20    /*  Display Inversion Off   */
#define TFT_INVON_CMD       0x21    /*  Display Inversion O */
#define TFT_DISPOFF_CMD     0x28    /*  Display Off */
#define TFT_DISPON_CMD      0x29    /*   Display On */
#define TFT_CASET_CMD       0x2A    /*  Column Address Set  */
#define TFT_RASET_CMD       0x2B    /*  Row Address Set .   */
#define TFT_RAMWR_CMD       0x2C    /*  Memory Write    */
#define TFT_VSCRDEF_CMD     0x33    /*  Vertical Scroll Start Address of RAM    */
#define TFT_COLMOD_CMD      0x3A    /*  Interface Pixel Forma   */
#define TFT_MADCTL_CMD		0x36	/*	Axis Control	*/


/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/
//Color Mode
#define TFT_RGB_4_4_4     0X03
#define TFT_RGB_5_6_5     0X05
#define TFT_RGB_6_6_6     0X06



/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/

static void TFT_voidWriteCmd(u8     Copy_u8Command);
static void TFT_voidWriteData(u8    Copy_u8Data);


#endif
/************************************* End of File ******************************************/
