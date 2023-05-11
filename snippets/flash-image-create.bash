#!/bin/bash

# 2M , fill 0xFF
tr '\000' '\377' < /dev/zero | dd of=flash_image_2m_FF.bin bs=1K count=2048

# 128M , fill 0xFF
tr '\000' '\377' < /dev/zero | dd of=flash_image_128m_FF.bin bs=1K count=131072
