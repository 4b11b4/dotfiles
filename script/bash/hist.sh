# bash: history top
history | awk '{print $2}' | sort -n | uniq -c | sort -n | tail
