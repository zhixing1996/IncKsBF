#!/usr/bin/env bash

# Main driver to submit jobs 
# Author JING Maoqiang <jingmq@ihep.ac.cn>
# Created [2018-07-22 Sun 12:10] 

# A function to generate random number
function rand(){
	min=$1
	max=$(($2-$min+1))
	num=$(date +%s%N)
	echo $(($num%$max+$min))    
}

if [ -d "Hs" ]; then
       	rm Hs -rf
       	mkdir Hs
fi

if [ ! -d "Hs" ]; then
       	mkdir Hs
fi

cd Hs

option=$1

case $option in
	0.1) echo "Running on 1~10 combinations..."
		for i in {1..10}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.2) echo "Running on 10~20 combinations..."
		for i in {10..20}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.3) echo "Running on 20~30 combinations..."
		for i in {20..30}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.4) echo "Running on 30~40 combinations..."
		for i in {30..40}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.5) echo "Running on 40~50 combinations..."
		for i in {40..50}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.6) echo "Running on 50~60 combinations..."
		for i in {50..60}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.7) echo "Running on 60~70 combinations..."
		for i in {60..70}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.8) echo "Running on 70~80 combinations..."
		for i in {70..80}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.9) echo "Running on 80~90 combinations..."
		for i in {80..90}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	1.0) echo "Running on 90~100 combinations..."
		for i in {90..100}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

esac
