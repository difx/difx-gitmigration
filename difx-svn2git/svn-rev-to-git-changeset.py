#!/usr/bin/env python

# run me inside the repo

import sys
import subprocess


if len(sys.argv) > 1:
    repo = sys.argv[1]
else:
    repo = '.'

args = 'git log'.split()

completed = subprocess.run(args, cwd=repo, stdout=subprocess.PIPE, check=True, encoding='utf8')

'''
commit 62622d7826e42528d501cbe41fc85612072d71bd
Author: WalterBrisken <WalterBrisken@example.com>
Date:   Tue Sep 22 18:10:36 2020 +0000

    Fix seg fault introduced when channel-based flagging was added.  Do some other minor clean-
    
    svn path=/applications/difx2fits/trunk/; revision=9734
'''

for line in completed.stdout.splitlines():
    if line.startswith('commit '):
        changeset = line.split()[1]
    if line.startswith('    svn path='):
        pathrev = line.split('=', 1)[1]
        svn_path = pathrev.split(';', 1)[0]
        svn_rev = 'r' + pathrev.split('=', 1)[1]

        print(svn_path, svn_rev, changeset)
