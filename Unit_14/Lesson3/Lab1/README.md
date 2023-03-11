# ARM-V7 LAB 1 
## From Privileged access level to unprivileged and vice versa
    After reset, we worked on thread mode with privileged access level using the main stack.
![image](https://drive.google.com/uc?export=download&id=1N6pBYTZTZVq--5BNnMMX6sTSQfFaCLi_)

    Goto the unprivileged access level by write on CONTRO using MSR/MRS Instruction 
    to access special registers
![image](https://drive.google.com/uc?export=download&id=1G-4O00bekZl_d9RT7SLznObp7Oc27x1l)

    to go back to the privileged state, we must make it inside interrupt because the CONTROL
    needs privileged access level to use it.
![image](https://drive.google.com/uc?export=download&id=1FnmW8sohqCVh90BIBDOZq6aQ7zKLHKA3) 

    Whole Image
![image](https://drive.google.com/uc?export=download&id=1uG29XpajfcfOmzoZsQlZ_MR41G-Wq_W_) 


## What happens if uses resource (NVIC) needs a privileged access level in an unprivileged access level?
    It will cause hard-fault and stuck on it.
![image](https://drive.google.com/uc?export=download&id=1BZTaiJrlmhJ4UY1rM8kmyBRhYKY7FL8q)  

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
