echo "installing dolphin emulator for linux."
echo "this is a remake of the offical way to install dolphin emulator (https://dolphin-emu.org/docs/guides/building-dolphin-linux/) made by Totsugeki"

sudo apt install git

sudo apt install --no-install-recommends ca-certificates qt6-base-dev qt6-base-private-dev libqt6svg6-dev git cmake make gcc g++ pkg-config libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libxi-dev libxrandr-dev libudev-dev libevdev-dev libsfml-dev libminiupnpc-dev libmbedtls-dev libcurl4-openssl-dev libhidapi-dev libsystemd-dev libbluetooth-dev libasound2-dev libpulse-dev libpugixml-dev libbz2-dev libzstd-dev liblzo2-dev libpng-dev libusb-1.0-0-dev gettext

git clone https://github.com/dolphin-emu/dolphin.git dolphin-emu

cd ./dolphin-emu

git submodule update --init --recursive

git checkout tags/5.0

mkdir Build

cmake .

make -j$(nproc)

sudo make install

cmake -Dbindir=../Binary/Linux -Ddatadir=../Binary/Linux ..

cd

dolphin-emu

clear

echo "dolphin has been installed. The application will open automatically."

echo "if dolphin-emu does not launch automatically, tpye "dolphin-emu" or look in your apps tab to launch it. It should be in your Linux apps.1"

"if the installation failed, please make sure you have CMAKE, MAKE, and GIT installed, and try the installation again."

echo "this is a remake of the offical way to install dolphin emulator. (https://dolphin-emu.org/docs/guides/building-dolphin-linux/) this code was made by Totsugeki"
