# Compiling KiCad on Mint 18.3 64-bit kernel:4.10.0-38-generic
# Also works on Ubuntu 16.04

sudo apt update
sudo apt upgrade

# ngspice
cd ~/pub/
sudo apt install libreadline6-dev libx11-dev libice-dev libxext-dev libxmu-dev
wget https://sourceforge.net/projects/ngspice/files/ng-spice-rework/27/ngspice-27.tar.gz
tar -xvzf ngspice-27.tar.gz
cd ngspice-27/
mkdir build
cd build/
../configure --with-x --with-readline=yes --disable-debug --enable-cider --enable-xspice --enable-openmp --with-ngshared
make -j4
sudo make install
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# OCE
cd ~/pub/
sudo apt install libfreetype6-dev
git clone https://github.com/tpaviot/oce.git
cd oce/
mkdir build
cd build/
cmake ../
make -j4
sudo make install/strip

# kicad
may need to uncomment #deb-src for _universe_ line in /etc/apt/sources.list in order to get apt to find the sources for build-dep
sudo apt build-dep kicad
sudo apt install cmake-gui libglm-dev libboost-test-dev
cd ~/pub/
git clone https://git.launchpad.net/kicad
git checkout <some commit here>
cd kicad/
mkdir build
cd build/
cmake-gui ../
build settings:
USE_WX_GRAPHICS_CONTEXT=OFF
USE_WX_OVERLAY=OFF
KICAD_SCRIPTING=ON
KICAD_SCRIPTING_MODULES=ON
KICAD_SCRIPTING_WXPYTHON=ON
KICAD_SCRIPTING_ACTION_MENU=ON
BUILD_GITHUB_PLUGIN=ON
KICAD_USE_OCE=ON
KICAD_SPICE=ON
make -j4
sudo make install
sudo ldconfig

sudo shutdown -r now
