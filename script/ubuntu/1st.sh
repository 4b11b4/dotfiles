cd ~ # assume run from home

# basics
sudo apt install git

# vim
sudo apt install vim
sudo apt install vim-gtk # +clipboard
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# puter lang
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

# .files
mkdir pub
git clone https://github.com/4b11b4/dotfiles.git pub/dotfiles
./pub/dotfiles/install

# ssh > pw
#ssh-keygen
#gedit .ssh/id_rsa.pub
