#!/usr/bin/bash

for tag in DiFX-2.2 DiFX-2.4 DiFX-2.5.2 DiFX-2.6 DiFX-2.6.3 DiFX-RA-1.0.1 DiFX-2.3 DiFX-2.5 DiFX-2.5.3 DiFX-2.6.1 DiFX-2.7 DiFX-2.3.1 DiFX-2.5.1 DiFX-2.5.4 DiFX-2.6.2 DiFX-RA-1.0.0
do
	cd $tag
	python3 ../grab_metadata_tags.py $tag	
	cd ..
done
