#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "./update-tags.sh version_tag latest_tag"
    echo "./update-tags.sh v8.20.1 v8-latest"
    exit 1
fi

CURRENT_BRANCH=$(git symbolic-ref --short -q HEAD)
if [ $CURRENT_BRANCH != "develop" ]
  then
    echo "Not on develop branch"
    exit 1
fi

git fetch
GIT_BEHIND_COUNT=$(git rev-list HEAD...origin/develop --count)
if [ $GIT_BEHIND_COUNT -gt 0 ]
  then
    echo "Not up to date with remote develop branch"
    exit 1
fi

git tag $1
git push origin $1
echo "Tagged with $1"

if [ -z $2 ]
  then
    echo "Not tagging with latest"
    exit 0
fi
git tag -f $2
git push origin -f $2
echo "Tagged with $2"