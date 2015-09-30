#!/bin/bash

# safely merge a feature branch and destroy it when you're done
# there should already be an open pull request for $BRANCH on gh

if [ -d .git ]; then
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    echo "merging "$BRANCH" into master"
    git checkout master
    git pull origin master
    git checkout $BRANCH
    git rebase -i master
    git push origin $BRANCH -f
    git checkout master
    git merge $BRANCH
    git push origin master
    if [[ $1 == 'd' ]]; then
        git push origin :$BRANCH
        git branch -D $BRANCH
    else
        echo "remote and local branches not deleted"
    fi
else
    echo "not in a git repo..."
fi
