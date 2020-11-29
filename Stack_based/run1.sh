#!/bin/bash

sudo sysctl -w kernel.randomize_va_space=2

gcc -m32 -o stack -z execstack -fno-stack-protector stack.c

sudo chown root stack
sudo chmod 4755 stack

rm badfile
gcc -m32 exploit.c -o exploit
./exploit

./stack
