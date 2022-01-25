#!/usr/bin/env python

import os
import sys

name= sys.argv[1]
all_branches = "git branch -r | grep {0} | sed 's/{1}\///' > all_branches.txt".format(name,name)
os.system(all_branches)

fp = open('all_branches.txt', 'r')

all_branches_list =  fp.readlines()

print(all_branches_list)

for i in all_branches_list:
	print(i)
	go = 'git branch {} refs/remotes/{}/{}'.format(i.strip(),sys.argv[1],i.strip())
	print(go)
	os.system(go)