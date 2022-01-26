#!/usr/bin/bash

#rm -rvf $1

for repo in difx/applications/calcif2 difx/applications/datasim difx/applications/difx2mark4 difx/applications/difxcalc11 difx/applications/espresso difx/applications/hops difx/applications/mk5daemon difx/applications/vex2difx h difx/applications/calcserver difx/applications/difx2fits difx/applications/difx_monitor difx/applications/difxfilterbank difx/applications/guiServer difx/applications/m6support difx/applications/polconvert difx/libraries/codifio difx/libraries/difxio difx/libraries/difxmessage difx/libraries/dirlist difx/libraries/mark5access difx/libraries/mark6meta difx/libraries/mark6sg difx/libraries/perl difx/libraries/python difx/libraries/vdifio difx/libraries/vex difx/mpifxcorr difx/sites/MPIfR difx/sites/NRAO difx/tests/ATNF difx/tests/Synthetic difx/utilities; do
	if [ ! -d $repo ]; then
		bash go-svn-repo.sh $repo
	else
		echo $repo
		echo 'repo exists, delete to re-run or just skip'
	fi
done
