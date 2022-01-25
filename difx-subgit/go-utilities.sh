#!/usr/bin/env bash

mkdir repo-utilities-r1

time ./subgit-3.3.12/subgit-3.3.12/bin/subgit configure https://svn.atnf.csiro.au/difx/utilities  repo-utilities-r1 --layout auto
# The fetcing SVN history spend 6mins

cp ../authors.txt repo-utilities-r1

cp subgit-utilities-r1/config repo-utilities-r1/subgit/

time ./subgit-3.3.12/subgit-3.3.12/bin/subgit install repo-utilities-r1
# ~ 20 mins

git remote add origin https://github.com/difx/utilities-r1.git
git push -u origin master
git push --all
git push --tags