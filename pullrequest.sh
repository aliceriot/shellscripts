#!/bin/sh

if [ -d .git ]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    echo "creating pull request for "$BRANCH
    if [ $1 == "f" ]; then
        git push origin $BRANCH -f
    else
        git push origin $BRANCH
    fi
else
    echo "not in a git repo!"
fi
