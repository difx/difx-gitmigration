# Make release version

## Create Branch DXXX and release it

After cherry-pick all the commit, then try to arrange the master_tags/DiFX-RA-1.0.0 on the root path

using 

```bash
$ git rm -r applications....

$ git mv master_tags/DiFX-RA-X.X.X/* .
```

This is for D100
If we want to download the tar file, the filesize will reduce from 279MB to 25.4MB for D100.



Create a Build number:

```bash
$ git describe DXXX
v1.0.0-14-g8a27f5d7f

```

Prepare a release for non-giter, you can upload it to the release page

```bash
$ git archive DXXX --prefix='DiFX-X.X.X/' | gzip > DiFX-`git describe DXXX`.tar.gz
$ ls *.tar.gz
v1.0.0-14-g8a27f5d7f
```



Generate the shortlog

```bash
$ git shortlog --after 15Jul2016 # Date is the oldest for the release
```



## Create Branch DXXX and release


After cherry-pick all the commit, then try to arrange the master_tags/DiFX-RA-1.0.1 on the root path

using 

```bash
$ git rm -r applications....

$ git mv master_tags/DiFX-RA-1.0.1/* .
```




Create a Build number:

```bash
$ git describe D101
v1.0.1-1-gaa2aed4de

```

Prepare a release for non-giter, you can upload it to the release page

```bash
$ git archive D101 --prefix='DiFX-1.0.1/' | gzip > DiFX-`git describe D101`.tar.gz
$ ls *.tar.gz
DiFX-v1.0.1-1-gaa2aed4de
```



Generate the shortlog

```bash
$ git shortlog --after 15Jul2016 # Date is the oldest for the release
```

