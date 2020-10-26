sudo apt-get install -y build-essential yasm \
libgpac-dev libgsm1-dev libspeex-dev \
libvorbis-dev libdc1394-22-dev libsdl1.2-dev \
zlib1g-dev texi2html libfaac-dev libmp3lame-dev \
libtheora-dev libopencore-amrnb-dev \
libopencore-amrwb-dev frei0r-plugins-dev \
libopencv-dev libvpx-dev libgavl1 libx264-dev

git clone https://github.com/bcoudurier/FFmbc
cd FFmbc
./configure --enable-gpl --enable-nonfree --enable-shared \
	--enable-postproc --enable-runtime-cpudetect \
	--enable-frei0r --enable-libdc1394 --enable-libfaac \
	--enable-libgsm --enable-libmp3lame --enable-libspeex \
	--enable-libtheora --enable-libvorbis --enable-libvpx \
	--enable-libx264 --enable-pthreads --enable-zlib \
	--disable-doc
make -j$(nproc)
sudo make install 
sudo ldconfig
