#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "./update_tags.sh version_tag latest_tag"
    echo "./update_tags.sh v8.20.1 v8-latest"
    exit 1
fi

git tag $1
git push origin $1

if [ -z $2 ]
  then
    echo "Not tagging with latest"
    exit 0
fi
git tag -f $2
git push origin -f $2