#!/usr/bin/env bash

mkdir repo-mark5access

time ../subgit-3.3.12/subgit-3.3.12/bin/subgit configure https://svn.atnf.csiro.au/difx repo-mark5access --trunk libraries/mark5access/trunk --layout auto

cp ../authors.txt repo-mark5access

cp subgit-mark5access/config repo-mark5access/subgit/

time ../subgit-3.3.12/subgit-3.3.12/bin/subgit install repo-mark5access

git remote add origin https://github.com/difx/mark5access.git
git push -u origin master
git push --all
git push --tags