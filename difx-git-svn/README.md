# Using git svn command

## Try-1

```bash
$ time git svn clone --authors-file=authors.txt https://svn.atnf.csiro.au/difx difx
# will fetch all commits history
```

```
r2271 = 3d5abdb9b25a7fbe86ffc194c425ac71cd6ebc4f (refs/remotes/git-svn)
        M       libraries/difxmessage/trunk/difxmessage.h
r2272 = e408517e87a0a14191a943a4f3cbfba52b2d8db4 (refs/remotes/git-svn)
cat-file commit e408517e87a0a14191a943a4f3cbfba52b2d8db4: command returned error: 127

real    138m14.079s
user    0m0.000s
sys     0m0.031s
```



## Try - 2 submodules


```bash
$ cd scripts
$ time ./go-all.sh

... a bunch of output

real    424m0.647s
user    24m25.631s
sys     26m39.062s

```

 