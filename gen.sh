#!/bin/bash

for ((j=0;j<=8;j++))
do
	r_name=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 8; echo)
	mkdir -p ${r_name}/subdir${j}

	cd ${r_name}/subdir${j}
	for ((k=0;k<=2;k++))
	do
		r_name=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 4; echo)
		dd if=/dev/random of=./${r_name}.dat bs=1000 count=1
		
		elapsed=$(tr -dc 0-9 </dev/urandom | head -c 1; echo)
		touch -d "${elapsed} days ago" ./${r_name}.dat

		r_name=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 4; echo)
		dd if=/dev/random of=./${r_name}.bin bs=1000 count=1

		elapsed=$(tr -dc 0-9 </dev/urandom | head -c 1; echo)
		touch -d "${elapsed} days ago" ./${r_name}.dat

		r_name=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 4; echo)
		dd if=/dev/random of=./${r_name}.txt bs=1000 count=1

		elapsed=$(tr -dc 0-9 </dev/urandom | head -c 1; echo)
		touch -d "${elapsed} days ago" ./${r_name}.dat
	done
	
	cd ../..
done

