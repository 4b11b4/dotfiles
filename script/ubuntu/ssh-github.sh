ssh-keygen -t ed25519 -C "4b11b4@gmail.com"

read -n 1 -p "press key after | github" garbage 

#test
ssh -T git@github.com
