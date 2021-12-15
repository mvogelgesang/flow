#!/bin/bash

version=$1

git checkout develop
git checkout -b release-$version
# Update the version number which is located in a given file
sed -r -i '' -e "s/[0-9]+\.[0-9]+\.[0-9]+/$version/gi" input.txt

git add -A
git checkout main
git merge release-$version

