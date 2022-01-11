#!/bin/bash
./configure \
  --enable-cross-compile \
  --pkg-config-flags="--static" \
  --extra-ldflags="-lm -lz -llzma -lpthread" \
  --extra-libs=-lpthread \
  --extra-libs=-lm \
  --enable-gpl \
  --enable-libfdk_aac \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libx264 \
  --enable-nonfree \
  --disable-shared \
  --enable-static \
  --enable-opengl \
  --extra-libs='-lGLEW -lglfw' \
  --enable-filter=plusglshader \
  --enable-filter=lutglshader \
  --enable-filter=fadeglshader \
  --enable-filter=pipglshader
make clean
make -j16
make install