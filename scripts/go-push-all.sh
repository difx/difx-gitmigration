#!/usr/bin/bash

#rm -rvf $1

base=$(pwd)
echo '##############'
echo $base
echo '##############'

sleep 2

for repo in difx/applications/calcif2 difx/applications/datasim difx/applications/difx2mark4 difx/applications/difxcalc11 difx/applications/espresso difx/applications/hops difx/applications/mk5daemon difx/applications/vex2difx difx/applications/calcserver difx/applications/difx2fits difx/applications/difx_monitor difx/applications/difxfilterbank difx/applications/guiServer difx/applications/m6support difx/applications/polconvert difx/libraries/codifio difx/libraries/difxio difx/libraries/difxmessage difx/libraries/dirlist difx/libraries/mark5access difx/libraries/mark6meta difx/libraries/mark6sg difx/libraries/perl difx/libraries/python difx/libraries/vdifio difx/libraries/vex difx/sites/MPIfR difx/sites/NRAO difx/tests/ATNF difx/tests/Synthetic; do
	reponame=$(echo $repo | cut -d/ -f3)
	echo $reponame
	cd $repo
	git remote add origin git@github.com:difx/$reponame.git
	git push --set-upstream origin master
	git push --all
	cd $base
done

for repo in difx/utilities difx/mpifxcorr; do
	reponame=$(echo $repo | cut -d/ -f2)
	echo $reponame
	cd $repo
	git remote add origin git@github.com:difx/$reponame.git
	git push --set-upstream origin master
	git push --all
	cd $base
done
