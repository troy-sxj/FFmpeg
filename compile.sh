#!/bin/bash
#./configure \
#  --enable-cross-compile \
#  --pkg-config-flags="--static" \
#  --extra-ldflags="-lm -lz -llzma -lpthread" \
#  --extra-libs=-lpthread \
#  --extra-libs=-lm \
#  --enable-gpl \
#  --enable-libfdk_aac \
#  --enable-libfreetype \
#  --enable-libmp3lame \
#  --enable-libx264 \
#  --enable-nonfree \
#  --disable-shared \
#  --enable-static \
#  --enable-opengl \
#  --extra-libs='-lGLEW -lglfw' \
#  --enable-filter=plusglshader \
#  --enable-filter=lutglshader \
#  --enable-filter=fadeglshader \
#  --enable-filter=pipglshader
#make clean
#make -j16
#make install

./configure  --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libass \
--enable-libfdk-aac --enable-libfreetype --enable-libmp3lame \
--enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 --enable-libopus --enable-libxvid \
--enable-opengl \
--extra-libs='-lGLEW -lglfw' \
--enable-filter=plusglshader \
--enable-filter=lutglshader \
--enable-filter=fadeglshader \
--enable-filter=pipglshader
--samples=fate-suite/
make clean
make
make install