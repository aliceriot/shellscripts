#!/bin/bash

if [ -d .git ]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    if [[ $1 == 'f' ]]; then
        echo "updating pull request for "$BRANCH
        git push origin $BRANCH -f
    else
        echo "creating pull request for "$BRANCH
        git push origin $BRANCH
    fi
else
    echo "not in a git repo!"
fi
