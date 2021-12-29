#sudo apt install gpg #auth plugin
#node iz everywhere
asdf plugin add nodejs
asdf install nodejs 14.18.2
asdf global nodejs 14.18.2

#still dunno unsafe-perm
npm install -g --unsafe-perm node-red

#rpi
#sudo apt install build-essential git curl
#bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)

read -n 1 -p "ctrl+c or any key start node-red" garbage
node-red
