# Migrationg DiFX from SVN to Github using svn2git

## Install svn2git

Goto https://github.com/nirvdrum/svn2git, 
this a a Ruby tool for importing existing svn projects into git.

## Round 1

### Clone

First clone all the repo using :

```bash
bash go-r1.sh
```

This is treat all root files as trunk include master_tags, will grab all commits.

Check https://github.com/difx/difx-svn2git-try5 

### Make tags

```bash
$ cp scripts/grab_metadata_tags.* difx/master_tags
$ bash grab_metadata_tags.sh
# Then you will got all the tags
```


### Sync

When the svn repo updated, please do `sync-r1.sh` or:

```bash
$ cd directory
$ svn2git --rebase
$ git push
```

## Round 2

### Clone

First clone all the repo using :

```bash
bash go-r2.sh
```

This is treat all root files as trunk include master_tags, will check all commits.

Check https://github.com/difx/difx-svn2git-try6 


### Sync

When the svn repo updated, please do `sync-r2.sh` or:

```bash
$ cd directory
$ svn2git --rebase
$ git push
``` 

or 

```bash
$ svn2git --rebase
# file xxx not found
$ git svn fetch --ignore-paths="master_tags/DiFX-2.*/sites/MPIfR/vex/plotVexChannels.py*"
$ git checkout master
$ git merge xxxx
$ git push github
```