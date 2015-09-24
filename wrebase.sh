#!/bin/bash

if [ -d .git ]; then
    echo "WIP commit"
    git commit -a -m 'wip'
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    echo "currently on "$BRANCH
    git checkout master
    git pull origin master
    git checkout $BRANCH
    git rebase -i master
else
    echo "not in a git repo!"
fi
