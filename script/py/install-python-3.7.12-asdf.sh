# deps from https://bugs.python.org/issue31652#msg321260
sudo apt-get install -y build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev

# asdf is the way
asdf plugin add python
asdf install python 3.7.12
asdf global python 3.7.12
