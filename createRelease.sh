#!/bin/bash

version=$1

git checkout develop
git pull origin develop
git checkout -b release-$version
# Update the version number which is located in a given file
sed -r -i '' -e "s/Version [0-9]+\.[0-9]+\.[0-9]+/Version $version/gi" README.md

git add -A
git checkout main

## to delete next line
git checkout -b main2

git merge release-$version
git tag -a "v$version" -m "Version $version release"
git push origin main2
git checkout develop
git checkout -b develop2
git merge main2
git push origin develop2

