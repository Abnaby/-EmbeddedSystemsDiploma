## Mutex Example

In this example we have 4 tasks.  
T1 --> Lowest  Priority (1)   
T2 -->         Priority (2)   
T3 -->         Priority (3)   
T4 --> Highest Priority (4)   
And each task active the next task in some condition, and each task terminate itself under a specific condition.

Before Enable Mutex   

![image](../AquireMutex/Before%20AquireMutex.JPG)

in file `MRTOS_Porting.h` Enable usage of mutex `ENABLE_MUTEX` 
```c
#define ENABLE_MUTEX 		1
```
Task 1 acquires mutex before T4, but when T4 runs it terminates itself because it needs the same mutex so happen priority inversion and waiting for t1 after releasing the mutex.

So After enable it .
![image](../AquireMutex/After%20AquireMutex.JPG)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

