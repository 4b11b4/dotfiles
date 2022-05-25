# Find Two Strings
grep -e "str1" -e "str2"

# Find and Replace Recursively
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/foo/bar/g'

# Find and Replace in All Files in Current Directory (breaks on dirs)
sed -i 's///g' *
