# Make release version

## Create Branch D100 and release



After cherry-pick all the commit, then try to arrange the master_tags/DiFX-RA-1.0.0 on the root path

using 

```bash
$ git rm -r applications....

$ git mv master_tags/DiFX-RA-1.0.0/* .
```

If we want to download the tar file, the filesize will reduce from 279MB to 25.4MB for D100.



Create a Build number:

```bash
$ git describe D100
v1.0.0-14-g8a27f5d7f

```

Prepare a release for non-giter, you can upload it to the release page

```bash
$ git archive D100 --prefix='DiFX-1.0.0/' | gzip > `git describe D100`.tar.gz
$ ls *.tar.gz
v1.0.0-14-g8a27f5d7f
```



Generate the shortlog

```bash
$ git shortlog --after 15Jul2016 # Date is the oldest for the release
```

