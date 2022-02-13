git clone https://github.com/HermanChen/mpp.git
cd mpp/build/
cmake ..
make
sudo make install
git clone https://github.com/EhsanVahab/rockchip-mpp-encoder.git
cd rockchip-mpp-encoder
#corret library and include address in Makefile
#correct image file name in the enc.cpp
make
./enc
