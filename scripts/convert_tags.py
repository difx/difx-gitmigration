#!/usr/bin/env python

import os
import sys

name= sys.argv[1]

all_tags = "git branch -r | grep {0} | sed 's/{1}\///' > all_tags.txt".format(name,name)
os.system(all_tags)

fp = open('all_tags.txt', 'r')

all_tags_list =  fp.readlines()

print(all_tags_list)

for i in all_tags_list:
	print(i)
	go = 'git tag -a -m "Converting SVN tags" {} refs/remotes/{}/{}'.format(i.strip(),sys.argv[1],i.strip())
	print(go)
	os.system(go)