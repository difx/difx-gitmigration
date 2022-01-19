#!/usr/bin/env bash

rm -rvf svn2git-2-r2
mkdir -p svn2git-2-r3
cd svn2git-2-r3

time svn2git https://svn.atnf.csiro.au/difx --tags master_tags --exclude doc --exclude deprecated  --exclude master_tags --exclude setup --exclude virtualtrunk --authors ../authors.txt --branches mpifxcorr/branches --branches applications/calc/branches  --branches applications/calcserver/branches   --branches applications/difx2fits/branches --branches applications/difx2mark4/branches --branches applications/difxfilterbank/branches --branches applications/DiFXGUI/branches --branches applications/difx_monitor/branches --branches applications/doi/branches --branches applications/espresso/branches --branches applications/gui/branches --branches applications/hops/branches --branches applications/m6support/branches --branches applications/mk5daemon/branches --branches applications/polconvert/branches --branches applications/pydifx/branches --branches applications/vdif_server/branches --branches applications/vex2difx/branches  --branches libraries/codifio/branches           --branches libraries/difxio/branches    --branches libraries/difxmessage/branches     --branches libraries/mark5access/branches    --branches libraries/mark6sg/branches  --branches libraries/perl/branches  --branches libraries/rpfits/branches    --branches libraries/vdifio/branches  --branches libraries/vex/branches --metadata --rootistrun

git remote add origin https://github.com/difx/difx-svn2git-2-r2.git
git push -u origin master
