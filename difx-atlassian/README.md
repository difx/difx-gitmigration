# Migrating from SVN to GIT with Branches and Tags

### Initialise

In an empty test directory initialize a git repository with the URL to your SVN source:

```bash
$ git svn init https://svn.atnf.csiro.au/difx/utilities --stdlayout --prefix=svn/
```

Check the settings are correct with:

```bash
$ git config --local --list
```

### Authors

If you want to have valid git authors corresponding to your SVN users then create an authors file in the following format:

The word on the left of the equals sign is the svn username. On the right is the corresponding info to use within git. If you already have a copy of the svn repo locally you can run the following code to help generate a file of svn usernames as a starting point:

```bash
$ bash scripts/get_authors.sh
```

If you need to checkout the svn code you would first need to:

```
svn co https://svn.atnf.csiro.au/difx/utilities
```

### Get the Subversion Code

The next step was to fetch the code from the SVN repository (the URL was already initialised above with git svn init) and I have specified my authors-transform.txt file to give git identities to the svn usernames:

```bash
$ git svn fetch -A authors.txt
# 40 mins
```

At this point you should see all your code. If no files come down consider removing the .git directory and run the ‘git svn init’ command again but omitting the –stdlayout option. I ran the following to have a look at all (-a) the local and remote branches:

```
git branch -a
```

 

### get the branches from remote

```bash
$ python scripts/convert_branches.py origin
```

### Converting Tags

Since the command git branch -r was showing the SVN tags with ‘tag’ in the name I was able to use the following shell to convert:

```bash
$ python scripts/convert_tags.py tags
```

### Pushing to GitLab or Github

After creating a new project on Gitlab/Github to house your code use the address to add a new remote origin:

```bash
$ git remote add origin repo@github.git
```

Then push the code up to that git remote repository:

```bash
$ git push --all
$ git push --tags
```

Browsing to the web interface I was able to see the code complete with the branches and tags.
