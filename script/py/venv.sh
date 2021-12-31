# recommend use system pip for user pip install
python3 -m pip install --user --upgrade pip
python3 -m pip --version

read -p "ctrl+c | press key to create venv named 'env' in current dir" varName

python3 -m venv env

read -p "ctrl+c | press key to install requirements.txt" varName

python3 -m pip install -r requirements.txt

python3 -m pip freeze
