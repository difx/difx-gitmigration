#!/usr/bin/env python

# run me inside the repo

import sys
import subprocess


if len(sys.argv) > 1:
    repo = sys.argv[1]
else:
    repo = '.'

args = 'git log --all --pretty=format:checkin:%H:%d:%b --reverse'.split()

completed = subprocess.run(args, cwd=repo, stdout=subprocess.PIPE, check=True, encoding='utf8')

for line in completed.stdout.splitlines():
    if line.startswith('checkin:'):
        _, changeset, branch_etc, first = line.split(':', maxsplit=3)
        branch = 'master'
        if branch_etc == ' (tag':
            _, first = first.split(':', maxsplit=1)
            branch_etc = ''
        if branch_etc.startswith(' ('):
            branch = branch_etc.split(',')[1].strip().rstrip(')')
        if first:
            line = first
    if line.strip().startswith('svn path='):
        pathrev = line.split('=', 1)[1]
        svn_path = pathrev.split(';', 1)[0]
        svn_rev = 'r' + pathrev.split('=', 1)[1]

        print(branch, svn_path, svn_rev, changeset)
