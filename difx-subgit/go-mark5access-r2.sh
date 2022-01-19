#!/usr/bin/env bash

mkdir repo-mark5access-r2

time ../subgit-3.3.12/subgit-3.3.12/bin/subgit configure https://svn.atnf.csiro.au/difx/libraries/mark5access  repo-mark5access-r2 --trunk trunk --layout auto

cp ../authors.txt repo-mark5access-r2

cp subgit-mark5access-r2/config repo-mark5access-r2/subgit/

time ../subgit-3.3.12/subgit-3.3.12/bin/subgit install repo-mark5access-r2

git remote add origin https://github.com/difx/mark5access-r2.git
git push -u origin master
git push --all
git push --tags