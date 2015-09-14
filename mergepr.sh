#!/bin/sh

if [ -d .git ]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    echo "merging "$BRANCH" into master"
    git checkout master
    git pull origin master
    git checkout $BRANCH
    git rebase -i master
    git commit --amend
    git checkout master
    git merge $BRANCH
    git push origin master
    git push origin :$BRANCH
    git branch -D $BRANCH
else
    echo "not in a git repo..."
fi
