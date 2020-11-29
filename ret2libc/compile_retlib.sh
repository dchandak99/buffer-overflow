#!/bin/bash
sudo sysctl -w kernel.randomize_va_space=0

gcc -m32 -o -fno-stack-protector -z noexecstack -o retlib retlib.c 

# sudo chown root retlib
sudo chmod u+s retlib
