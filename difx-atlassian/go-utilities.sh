#!/usr/bin/env bash

rm -rvf difx/utilities

time git svn clone --stdlayout --authors-file=../authors.txt https://svn.atnf.csiro.au/difx/utilities difx/utilities
# 39 mins

# $ git branch -a
#* master
#  remotes/origin/NRAO-DiFX-1.1
#  remotes/origin/NRAO-DiFX-1.1@642
#  remotes/origin/NRAO-DiFX-1.1@751
#  remotes/origin/bandmatch
#  remotes/origin/delaymagic
#  remotes/origin/difx-1.5
#  remotes/origin/difxdb_mysql
#  remotes/origin/radioastron20140201
#  remotes/origin/trunk
#  remotes/origin/xcube-newlf1
#  remotes/origin/xcube-newlf1@6081

# get the branches from remote

cd difx/utilities
python scripts/convert_branches.py origin


#git push --set-upstream origin master
#git push --all
