#!/usr/bin/env python

import os
import sys

version = sys.argv[1]

#all_tags = "git branch -r | grep {0} | sed 's/{1}\///' > all_tags.txt".format(name,name)

#os.system('cd {}'.format(version))

go_all_logs =  "git log . > logs.txt"
print('Got all the logs')
os.system(go_all_logs)

fp = open('logs.txt', 'r')

all_logs_list =  fp.readlines()

all_commit_list = []

print('Got all the commit SHA1 value')
for i in all_logs_list:
	if 'commit' in i:
		all_commit_list.append(i)
		#print(i)

init_commit = all_commit_list[-1].split()[1]
print(init_commit)	
	#go = 'git tag -a -m "Converting SVN tags" {} refs/remotes/{}/{}'.format(i.strip(),sys.argv[1],i.strip())
	#print(go)
	#os.system(go)


go_init_commit = 'git checkout {}'.format(init_commit)
print('Checkout the special commit : ',init_commit)
os.system(go_init_commit)

tag_version = version

go_tag = 'git tag -a v{} -m "Tag for version - {}"'.format(version.split('-')[-1],version)
print('Going to make a tag')
os.system(go_tag)

print('Going back to the master ')
os.system('git checkout master')