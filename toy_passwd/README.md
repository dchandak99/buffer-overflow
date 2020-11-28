# Toy Example of Buffer Overflow

### Idea
This is just a toy example to demonstrate buffer overflow and appreciate the damage it can cause.  
The logic of the program doesn't correspond to an exploit, since some workarounds have been used to get the  input size cross the buffer size.  

### Run
To bypass the StackGuard on modern Operating Systems, run [run.sh](run.sh). It will compile and run the file [passwd.c](passwd.c). 

To see the defence and protection offered by StackGuard, use [run1.sh](run1.sh).

### Description  
