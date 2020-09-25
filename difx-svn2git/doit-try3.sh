rm -rf difx-svn2git-try3.git difx-svn2git-try3 log*try3*
/home/lindahl/github/svn2git/svn-all-fast-export --identity-map authors.map --rules rules-try3 --add-metadata --debug-rules difx-mirror

cd difx-svn2git-try3.git
git repack -a -d -f
cd ..
git clone difx-svn2git-try3.git difx-svn2git-try3
cd difx-svn2git-try3
(cd ../difx-svn2git-try3.git/refs/heads && echo *) | xargs -n 1 git checkout
git checkout master

cd ..

./svn-rev-to-git-changeset.py difx-svn2git-try3 > svn-rev-to-git-changeset.txt

