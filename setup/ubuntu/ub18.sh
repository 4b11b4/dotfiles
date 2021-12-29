cd ~ #assume run from home
sudo apt install git

mkdir pub
git clone https://github.com/4b11b4/dotfiles.git pub/dotfiles
./pub/dotfiles/install

#ssh-keygen
#gedit .ssh/id_rsa.pub

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
