cd ~ # assume run from home

# basics
sudo apt install -y git
sudo apt install -y xclip # cat file | xclip
sudo apt install terminator

# vim
sudo apt install -y vim
sudo apt install -y vim-gtk # +clipboard
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# puter langs
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

# noise
sudo apt install -y sox

# .files
mkdir pub
git clone https://github.com/4b11b4/dotfiles.git pub/dotfiles
~/pub/dotfiles/scripts/ubuntu/garbage.sh
~/pub/dotfiles/install

# setup ssh
# ssh > pw
#ssh-keygen
#gedit .ssh/id_rsa.pub
