#!/bin/sh

cd out
shopt -s dotglob
mv -f ../repo/* ./
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git remote add -f dev-sheldon ../dev-sheldon
git merge --no-edit dev-sheldon/dev-sheldon

