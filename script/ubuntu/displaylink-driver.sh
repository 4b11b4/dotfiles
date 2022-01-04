# can use latest even if previous ubuntu
firefox https://www.synaptics.com/products/displaylink-graphics/downloads/ubuntu

read -p "press key after downloading latest" varName

# reference
# https://support.displaylink.com/knowledgebase/articles/1944022-how-to-install-displaylink-software-on-ubuntu-20-0

sudo apt update
sudo apt install -y build-essential dkms libdrm-dev

cd ~/Downloads
# extract and run
