rm -rf difx-svn2git-try3.git log*try3*
/home/lindahl/github/svn2git/svn-all-fast-export --identity-map ../difx-reposurgeon/difx.map --rules rules-try3 --add-metadata --debug-rules difx-mirror

cd difx-svn2git-try3.git
git repack -a -d -f
cd ..
git clone difx-svn2git-try3.git difx-svn2git-try3
cd difx-svn2git-try3
(cd ../difx-svn2git-try3.git/refs/heads && echo *) | xargs -n 1 git checkout
git checkout master
cd ..
