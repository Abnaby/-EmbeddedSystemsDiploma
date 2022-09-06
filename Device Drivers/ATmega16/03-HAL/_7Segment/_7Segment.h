/**
* @file _7Segment.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.2 : Support 1 or '1' as 1 --> Num or 'Num' = NUM
* @date 2022-09-05
*
*/
#ifndef _7Segment__H 
#define _7Segment__H 





/******************************************************************************
* Includes
*******************************************************************************/



/******************************************************************************
* Typedefs
*******************************************************************************/

/**
 * @brief This enum has the available options for type of seven segment  
 * 
 */
typedef enum
{
	
    COMN_ANODE     = LOW ,
    COMN_CATHOD    = HIGH

}_7Segment_Type ; 

/**
 * @brief This enum has the available options for modes of seven segment  
 * 
 */
typedef enum
{
    _7_SEG_NORMAL_MODE  ,
    _7_SEG_4_PIN_IC

}_7Segment_OperationMode ;

/**
 * @brief This enum has the available options for modes of seven segment  
 * 
 * @note in case of using _7_SEG_4_PIN_IC Mode from @ref _7Segment_OperationMode 
 *       We Use only _7SEG_A_x to _7SEG_D_x only and the rest of macros will be ignored 
 */
typedef struct
{
   u8 _7SEG_A_PORT    ;
   u8 _7SEG_A_PIN     ;
   u8 _7SEG_B_PORT    ;
   u8 _7SEG_B_PIN     ;
   u8 _7SEG_C_PORT    ;
   u8 _7SEG_C_PIN     ;
   u8 _7SEG_D_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_D_PIN     ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_E_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_E_PIN     ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_F_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_F_PIN     ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_G_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_G_PIN	  ;		// Will Ignored of Mode = _7_SEG_4_PIN_IC
}_7Segment_Pins;

/**
 * @brief This enum has possible return values from functions  
 * 
 */
typedef enum
{
    NO_ERROR                ,
	ERROR_OPRTION_MODE_SLCTION		,
	ERROR_TYPE_SLCTION		,
}_7Segment_ReturnState ;

/**
 * @brief This struct used to define configuration of Seven segmant
 * 
 */
typedef struct
{
    _7Segment_Type              _7SegmentType    ;          // see @ref  _7Segment_Type
    _7Segment_OperationMode     _7SegmentMode    ;          // see @ref  _7Segment_OperationMode
    _7Segment_Pins              _7SegmentPins    ;          // see @ref  _7Segment_Pins
}_7Segment_Config;




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

_7Segment_ReturnState HAL_7SegmentInit(_7Segment_Config* ptr_config); 
_7Segment_ReturnState HAL_7SegmentWriteNumber(_7Segment_Config* ptr_config , u8 copy_u8Number); 



#endif
/************************************* End of File ******************************************/