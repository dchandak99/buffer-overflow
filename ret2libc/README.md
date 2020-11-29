First, run compile_retlib.sh
Then run get_add.sh
It gives you the address of /bin/sh
Next the gdb command runs:
Type in: b main : adds breakpoint
r,
p system : gives you address of system env variable
p exit : gives you address of exit env variable

Add these addresses to your exploit.c
And run "run.sh": A shell is spawned!
