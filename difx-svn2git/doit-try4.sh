# TODO how do I incrementally update difx-mirror?

rm -rf difx-svn2git-try4.git difx-svn2git-try4-local log*try4*
/home/lindahl/github/svn2git/svn-all-fast-export --identity-map authors.map --rules rules-try4 --add-metadata --debug-rules difx-mirror

cd difx-svn2git-try4.git
git repack -a -d -f
cd ..
git clone difx-svn2git-try4.git difx-svn2git-try4-local
cd difx-svn2git-try4-local
(cd ../difx-svn2git-try4.git/refs/heads && echo *) | xargs -n 1 git checkout
git checkout master

git mv ./applications/DiFXGUI/trunk/* ./applications/DiFXGUI
git mv ./applications/calc/trunk/* ./applications/calc
git mv ./applications/calcserver/trunk/* ./applications/calcserver
git mv ./applications/datasim/trunk/* ./applications/datasim
git mv ./applications/difx2fits/trunk/* ./applications/difx2fits
git mv ./applications/difx2mark4/trunk/* ./applications/difx2mark4
git mv ./applications/difx2ms/trunk/* ./applications/difx2ms
git mv ./applications/difx_monitor/trunk/* ./applications/difx_monitor
git mv ./applications/difxcalc11/trunk/* ./applications/difxcalc11
git mv ./applications/difxfilterbank/trunk/* ./applications/difxfilterbank
git mv ./applications/doi/trunk/* ./applications/doi
git mv ./applications/espresso/trunk/* ./applications/espresso
git mv ./applications/gui/trunk/* ./applications/gui
git mv ./applications/guiServer/trunk/* ./applications/guiServer
git mv ./applications/hops/trunk/* ./applications/hops
git mv ./applications/m6support/trunk/* ./applications/m6support
git mv ./applications/mk5daemon/trunk/* ./applications/mk5daemon
git mv ./applications/polconvert/trunk/* ./applications/polconvert
git mv ./applications/pydifx/trunk/* ./applications/pydifx
git mv ./applications/vdif_server/trunk/* ./applications/vdif_server
git mv ./applications/vex2difx/trunk/* ./applications/vex2difx
git mv ./doc/userguide/trunk/* ./doc/userguide
git mv ./libraries/beamformer/trunk/* ./libraries/beamformer
git mv ./libraries/codifio/trunk/* ./libraries/codifio
git mv ./libraries/difxio/trunk/* ./libraries/difxio
git mv ./libraries/difxmessage/trunk/* ./libraries/difxmessage
git mv ./libraries/dirlist/trunk/* ./libraries/dirlist
git mv ./libraries/mark5access/trunk/* ./libraries/mark5access
git mv ./libraries/mark6meta/trunk/* ./libraries/mark6meta
git mv ./libraries/mark6sg/trunk/* ./libraries/mark6sg
git mv ./libraries/perl/trunk/* ./libraries/perl
git mv ./libraries/python/trunk/* ./libraries/python
git mv ./libraries/rpfits/trunk/* ./libraries/rpfits
git mv ./libraries/vdifio/trunk/* ./libraries/vdifio
git mv ./libraries/vex/trunk/* ./libraries/vex
git mv ./mpifxcorr/trunk/* ./mpifxcorr
git mv ./sites/NRAO/trunk/* ./sites/NRAO
git mv ./sites/USNO/trunk/* ./sites/USNO
git mv ./utilities/trunk/* ./utilities
find . -name trunk | xargs rmdir

git commit -m 'move trunk to .' -a

cd ..
./svn-rev-to-git-changeset.py difx-svn2git-try4-local > svn-rev-to-git-changeset-try4.txt

echo "hint: edit .git/config to remove the upstreams"
echo "hint: then do the github dance to create the repo"
echo "hint: after creating the github repo: git push --all origin"
