#!/usr/bin/bash

#rm -rvf $1

root=`pwd`
mkdir -p $1

time git svn clone --stdlayout --authors-file=authors.txt https://svn.atnf.csiro.au/$1 $1 
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

cd $1 
python $root/convert_branches.py origin
python $root/convert_tags.py tags
cd $root


#git push --set-upstream origin master
#git push --all
