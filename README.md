![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/mvogelgesang/flow?label=Latest%20tag&sort=semver&style=for-the-badge)

# Flow

This repo is built as a testing ground to get better acquainted with Github Flow and Git Flow practices as well as exploring ways to script tagging and versioning.

Semver- each book is a major version. Each chapter is a minor version. Each fix is a patch version.

## Current Version

Version 0.0.0

## Goals

Explore and document ways to automate tag creation, merges into `main`, merges back to develop, etc.

## Notes

Create repository `main`
Create develop branch `git checkout -b develop`

### Features

Features get branched off of develop

```sh
git checkout develop
git branch -b feature-x
```

Submit pull request to develop branch.

Upon merge, delete feature branch in Github

Checkout develop. Pull copies from remote to local and also remove old remote branches

```sh
git checkout develop
git pull origin develop
git remote update origin --prune
```

Delete local copies of merged feature branchs. If you have not pulled the latest from your remote, Git will not know you merged and will issue a warning and prevent the action from taking place.

```sh
git branch -d feature-x
```

Verify your local branches are clean

```sh
git branch -a
```

### Hotfixes

Hotfixes get branched off of main

```sh
git checkout main
git checkout -b hotfix-a
```

### Hotfix Releases

### Feature Releases

```sh
./createRelease.sh {versionNumber}
```
