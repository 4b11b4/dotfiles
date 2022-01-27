# https://github.com/zsa/wally/wiki/Linux-install
# note: may need to run with sudo

# deps (ubuntu)
apt install -y libusb-dev

# download wally to pub, make executable
wget -O ~/pub/wally https://configure.ergodox-ez.com/wally/linux
chmod +x ~/pub/wally

# create rules file in order to access low-level device (keyboard)
cp ~/pub/dotfiles/script/keyboard/50-wally.rules /etc/udev/rules.d/

# make sure user part of plugdev group (not always default)
groupadd plugdev
usermod -aG plugdev $USER
