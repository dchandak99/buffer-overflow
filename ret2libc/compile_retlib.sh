#!/bin/bash
sudo sysctl -w kernel.randomize_va_space=0

gcc -m32 -o retlib -z execstack -fno-stack-protector retlib.c

sudo chown root retlib
sudo chmod 4755 retlib
