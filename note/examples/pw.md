# Get BitWarden Password, Remove Newline At End, Copy To Clipboard
bw get password "github" | tr -d '\n' | xclip -i -selection clipboard
**...should really just be using SSH...**
