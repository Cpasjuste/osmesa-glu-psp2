#!/bin/bash

./autogen.sh
CFLAGS="-Wl,-q -D__PSP2__ -O3 -mfpu=neon -mcpu=cortex-a9 -march=armv7-a -mfloat-abi=hard -ffast-math" \
CXXFLAGS="$CFLAGS -fpermissive" \
LIBS="-lpthread" \
./configure --host=arm-vita-eabi --prefix=$VITASDK/arm-vita-eabi --disable-shared --enable-static --enable-osmesa
