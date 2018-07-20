#!/bin/bash

# A function to generate random number
function rand(){
	min=$1
	max=$(($2-$min+1))
	num=$(date +%s%N)
	echo $(($num%$max+$min))    
}

mkdir Hs
cd Hs
for i in {1..100}
do
	mkdir Combination$i
	cd Combination$i
	for j in {1..50}
	do
		IntRnd[$j]=$(rand 1 10000)
		decimal=`echo "scale=4; ${IntRnd[$j]} / 10000 " | bc -l`
		hs="0"$decimal
		touch hs.txt
		echo $hs >> hs.txt
		mkdir $hs
		cd $hs
		cp ../../../seed_gencross/* . -rf
		sed -i s/'seed_hs/'$hs''/g fit_ks_phase.C
		touch job
		echo "#!/bin/bash" > job
		echo "./ROOTCompile fit_ks_phase" >> job
		echo "./fit_ks_phase" >> job
		chmod u+x job
		./job
		cd ..
	done
	cd ..
done
