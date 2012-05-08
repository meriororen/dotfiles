#!/bin/bash
bersih() {
				for i in $(ls | awk -F . '{ if (NF>1) { print $NF }}')  
				do
								[ -d ${i}_files ] || mkdir -p ${i}_files 
								mv *.${i} ${i}_files/
				done		
}

hari=$(date +%d)

if [ $hari = 06 ] || [ $1 = "-f" ] 
then
				(
				pushd ~/Downloads  
				bersih
				popd
				) > /dev/null 2>&1
else
				echo "Not now."
fi
