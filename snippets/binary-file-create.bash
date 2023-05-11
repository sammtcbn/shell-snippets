#!/bin/bash

# 2M , fill 0xFF
tr '\000' '\377' < /dev/zero | dd of=image_2M_FF.bin bs=1K count=2048

# 128M , fill 0xFF
tr '\000' '\377' < /dev/zero | dd of=image_128M_FF.bin bs=1K count=131072

# 64 bytes , fill random value
dd if=/dev/urandom of=image_64B_rand.bin bs=1 count=64
