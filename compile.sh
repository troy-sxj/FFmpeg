#!/bin/bash

./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libass \
  --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libtheora \
  --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 \
  --enable-libopus --enable-libxvid \
  --enable-opengl --enable-filter=gltransition --extra-libs='-lGLEW -lglfw'

make clean
make
make install