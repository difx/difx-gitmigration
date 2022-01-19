#!/usr/bin/env bash

mkdir repo-mark5access-r1

time ../subgit-3.3.12/subgit-3.3.12/bin/subgit configure https://svn.atnf.csiro.au/difx repo-mark5access-r1 --trunk libraries/mark5access/trunk --layout auto

cp ../authors.txt repo-mark5access-r1

cp subgit-mark5access-r1/config repo-mark5access-r1/subgit/

time ../subgit-3.3.12/subgit-3.3.12/bin/subgit install repo-mark5access-r1

git remote add origin https://github.com/difx/mark5access-r1.git
git push -u origin master
git push --all
git push --tags