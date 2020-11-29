#!/bin/bash
sudo sysctl -w kernel.randomize_va_space=0

gcc -m32 -fno-stack-protector -z execstack -o retlib retlib.c 

sudo chown root retlib
sudo chmod u+s retlib
