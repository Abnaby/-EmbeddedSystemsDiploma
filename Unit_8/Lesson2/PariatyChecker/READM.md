

## Proteus Simulation
### Basic Format
<pre>
<pre>
Frame Format 
            Bit Name                    Number of Bits
            Start bit                           1 
            Data Bits                           8
            Parity                              0
            Stop Bits                           1
</pre>
Oscilloscope 
![image](https://i.ibb.co/MP5wvS1/no-Parity-1-Stop-Bits.png)
```c
    Struct Config --> 
                        UART_cnfg x ;                   	
                        x.baudrate = 9600 ;                 
                        x.databits =  _8BIT;	            
                        x.parity= DISABLED_PARITY;	            
                        x.stopbits= _1STOPBIT ;	            
                        x.state= TRANCIVER ;	            
                        x.operation= Asynchronous; 	        
                        MCAL_USART_init(&x);

```
</pre>

---
### 2nd Format 
<pre>
    For Char 
                U -->  0b01010101 
                W -->  001010111

<pre>
Frame Format 
            Bit Name                    Number of Bits
            Start bit                           1 
            Data Bits                           8
            Parity                              ODD-Parity
            Stop Bits                           2
</pre>
Oscilloscope 
![image](https://i.ibb.co/MRXvDby/ODD-PARITY-WITH-2-STOPBITS.png)

```c
    Struct Config --> 
                        UART_cnfg x ;                   	
                        x.baudrate = 9600 ;                 
                        x.databits =  _8BIT;	            
                        x.parity= ODD_PARITY;	            
                        x.stopbits= _2STOPBIT ;	            
                        x.state= TRANCIVER ;	            
                        x.operation= Asynchronous; 	        
                        MCAL_USART_init(&x);

```
</pre>

---
### 3rd Format
<pre>
    For Char 
                U -->  0b01010101 
                W -->  001010111
<pre>
Frame Format 
            Bit Name                    Number of Bits
            Start bit                           1 
            Data Bits                           8
            Parity                              Even-Parity
            Stop Bits                           2
</pre>
Oscilloscope 
![image](https://i.ibb.co/RTzN26z/EVEN-PARITY-WITH-2-STOPBITS.png)
```c
    Struct Config --> 
                        UART_cnfg x ;                   	
                        x.baudrate = 9600 ;                 
                        x.databits =  _8BIT;	            
                        x.parity= ODD_PARITY;	            
                        x.stopbits= _2STOPBIT ;	            
                        x.state= TRANCIVER ;	            
                        x.operation= Asynchronous; 	        
                        MCAL_USART_init(&x);

```
</pre>

---
