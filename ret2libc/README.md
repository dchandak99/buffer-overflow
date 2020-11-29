# Return to LibC attack

### Steps
First, run [compile_retlib.sh](compile_retlib.sh).  
Then run [get_add.sh](get_add.sh).  
It runs getenv to give you the address of /bin/sh.  

Next the gdb command runs:  
Type in: 
```
b main  //adds breakpoint
r
p system // gives you address of system env variable
p exit  // gives you address of exit env variable
```
- Note down the addresses printed for system and exit calls  
- Add these addresses to your exploit.c  
- Finally, run [run.sh](run.sh): A shell is spawned!
