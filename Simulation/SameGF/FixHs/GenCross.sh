#!/bin/bash

# A function to generate random number
function rand(){
	min=$1
	max=$(($2-$min+1))
	num=$(date +%s%N)
	echo $(($num%$max+$min))    
}

mkdir C
cd C
for i in {1..1}
do
	mkdir Combination$i
	cd Combination$i
	for j in {1..40}
	do
		IntRnd[$j]=$(rand 1 10000)
		decimal=`echo "scale=4; ${IntRnd[$j]} / 10000 " | bc -l`
		C="0"$decimal
		touch C.txt
		echo $C >> C.txt
		mkdir $C
		cd $C
		cp ../../../seed_gencross/* . -rf
		sed -i s/'seed_C/'$C''/g fit_ks_phase.C
		touch job
		echo "#!/bin/bash" > job
		echo "./ROOTCompile fit_ks_phase" >> job
		echo "./fit_ks_phase" >> job
		chmod u+x job
		./job
		cd ..
	done
	for j in {1..10}
	do
		echo $j >> C.txt
		mkdir $j
		cd $j
		cp ../../../seed_gencross/* . -rf
		sed -i s/'seed_C/'$j''/g fit_ks_phase.C
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
