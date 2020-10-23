#!/usr/bin/env python

import sys
import os
import os.path

top = sys.argv[1]

files = set()

for stuff in os.walk(top):
    dirpath, _, filenames = stuff
    [files.add(dirpath+'/'+f) for f in filenames]

for f in files:
    if '/trunk/' in f:
        new_f = f.replace('/trunk/', '/')
        if new_f in files:
            print('both exist:', f, new_f)
