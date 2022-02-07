#!/usr/bin/env bash

rm -rvf svn2git-2-r1
mkdir -p svn2git-2-r1
cd svn2git-2-r1
# we must specify the --metadata for git-svn rebase
svn2git https://svn.atnf.csiro.au/difx/ --rootistrunk --metadata --authors ../../authors.txt

git remote add origin https://github.com/difx/difx-svn2git-r5.git
git push -u origin master