# Git
## Tagging
### Show Tags
git tag
### Make A Tag
git tag -a v1.0 -m "this is v1.0" c45ab4c5
* (by default) if you do not put a commit number... tag the current commit
### Push Tags
git push origin --tags
## Merge
### Squash Into One
git checkout main
git merge --squash bugfix
git commit
