# assumes py3.6+

# if install via asdf, ignore next 4 lines
sudo apt install python3-pip 
sudo apt install python3-venv
# recommend use system pip for user pip install
python3 -m pip install --user --upgrade pip
python3 -m pip --version

read -p "ctrl+c | press key to create venv named 'env' in current dir" varName

python3 -m venv env
source env/bin/activate # no work from script? at least, no (env) prefix @ CLI
which python

read -p "ctrl+c | press key to install requirements.txt" varName

python3 -m pip install -r requirements.txt

python3 -m pip freeze

read -p "ctrl+c | press key to leave venv" varName

deactivate
