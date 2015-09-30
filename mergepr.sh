#!/bin/bash

# safely merge a feature branch and destroy it when you're done

if [ -d .git ]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    echo "merging "$BRANCH" into master"
    git checkout master
    git pull origin master
    git checkout $BRANCH
    git rebase -i master
    git checkout master
    git merge $BRANCH
    git push origin master
    git push origin :$BRANCH
    git branch -D $BRANCH
else
    echo "not in a git repo..."
fi
