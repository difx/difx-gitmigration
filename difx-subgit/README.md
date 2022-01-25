# Introduction

Here is some steps for the migration of DiFX from SVN to GIT.

## Download subgit

Goto https://subgit.com/ to get the latest version of subgit.

## Try-1


### Configure Mirror Git Repository

As there was no trunk of DiFX, so you should point the `--trunk` parameter for the running.

```bash
$ ~/subgit-3.3.10/bin/subgit configure --layout auto --trunk virtualtrunk --svn-url https://svn.atnf.csiro.au/difx

SubGit version 3.3.10 ('Bobique') build #4368

Configuring writable Git mirror of remote Subversion repository:
    Subversion repository URL : https://svn.atnf.csiro.au/difx
    Git repository location   : difx.git

Peg location detected: r9745 virtualtrunk
Fetching SVN history... Done.
Growing trees... Done.
Project origin detected: r5674 virtualtrunk
Building branches layouts... Done.
Combing beards... Done.
Generating SVN to Git mapping... Done.

CONFIGURATION SUCCESSFUL

To complete SubGit installation do the following:

1) Adjust Subversion to Git branches mapping if necessary:
    ~/DiFX-test/difx.git/subgit/config
2) Define at least one Subversion credentials in default SubGit passwd file at:
    ~/DiFX-test/difx.git/subgit/passwd
   OR configure SSH or SSL credentials in the [auth] section of:
    ~/DiFX-test/difx.git/subgit/config
3) Optionally, add custom authors mapping to the authors.txt file(s) at:
    ~/DiFX-test/difx.git/subgit/authors.txt
4) Run SubGit 'install' command:
    subgit install difx.git
```

### Review and Adjust Git/SVN Mirror Configuration

```bash
$ vim difx.git/subgit/config
$ vim difx.git/subgit/authors.txt
```

### Begin translation

```bash
$ ~/subgit-3.3.10/bin/subgit install difx.git

SubGit version 3.3.10 ('Bobique') build #4368

Translating Subversion revisions to Git commits...

    Subversion revisions translated: 9745.
    Total time: 242 seconds.

INSTALLATION SUCCESSFUL
```

In this way, I just got 21 commits with no tags.

## Try-2

```bash
$ ../subgit-3.3.10/bin/subgit configure --trunk virtualtrunk   --svn-url https://svn.atnf.csiro.au/difx difx2.git
SubGit version 3.3.10 ('Bobique') build #4368

Configuring writable Git mirror of remote Subversion repository:
    Subversion repository URL : https://svn.atnf.csiro.au/difx
    Git repository location   : difx2.git

CONFIGURATION SUCCESSFUL

To complete SubGit installation do the following:

1) Adjust Subversion to Git branches mapping if necessary:
    ~/DiFX-test/difx2.git/subgit/config
2) Define at least one Subversion credentials in default SubGit passwd file at:
    ~/DiFX-test/difx2.git/subgit/passwd
   OR configure SSH or SSL credentials in the [auth] section of:
    ~/DiFX-test/difx2.git/subgit/config
    # Here modify the config file as following:
    
3) Optionally, add custom authors mapping to the authors.txt file(s) at:
    ~/DiFX-test/difx2.git/subgit/authors.txt
4) Run SubGit 'install' command:
    subgit install difx2.git

$ ../subgit-3.3.10/bin/subgit install difx2.git

SubGit version 3.3.10 ('Bobique') build #4368

Translating Subversion revisions to Git commits...

    Subversion revisions translated: 9745.
    Total time: 3251 seconds.

INSTALLATION SUCCESSFUL
```

In this way, I just got 21 commits with 13 tags.

## Try - 3

git svn clone https://svn.atnf.csiro.au/difx --authors-file=authors.txt

## mark5access - r1

Trying to migrate mark5access using subgit using the following command:

```bash
$ cat go-mark5access-r1.sh
```

Using the configure file in `subgit-mark5access-r1` directory.

This method will generate 477 commits on 27 Oct 2021 with hash code 9ab3d49,
with 3 branches and 16 tags(mainly the DiFX master-tags).

## mark5access - r2

Trying to migrate mark5access using subgit using the following command:

```bash
$ cat go-mark5access-r2.sh
```

Using the configure file in `subgit-mark5access-r2` directory.

This method will generate 477 commits on 27 Oct 2021 with hash code 9ab3d49,
with 3 branches and no tag at all.

## utilities - r2

OS : Ubuntu 20.04

Trying to migrate utilities using subgit using the following command:

```bash
$ cat go-utilities.sh
```

Using the configure file in `subgit-utilities-r1` directory.

This method will generate 722 commits on 28 Oct 2021 with hash code bbc46ae7,
with 2 branches and no tag at all.
