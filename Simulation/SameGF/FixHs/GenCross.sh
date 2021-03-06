#!/bin/bash

# A function to generate random number
function rand(){
	min=$1
	max=$(($2-$min+1))
	num=$(date +%s%N)
	echo $(($num%$max+$min))    
}

if [ ! -d "C" ]; then
        mkdir C
fi

cd C

option=$1

case $option in
	0.1) echo "Running on 1~10 combinations..."
		for i in {1..10}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.2) echo "Running on 11~20 combinations..."
		for i in {11..20}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.3) echo "Running on 21~30 combinations..."
		for i in {21..30}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.4) echo "Running on 31~40 combinations..."
		for i in {31..40}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.5) echo "Running on 41~50 combinations..."
		for i in {41..50}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.6) echo "Running on 51~60 combinations..."
		for i in {51..60}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.7) echo "Running on 61~70 combinations..."
		for i in {61..70}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.8) echo "Running on 71~80 combinations..."
		for i in {71..80}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	0.9) echo "Running on 81~90 combinations..."
		for i in {81..90}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

	1.0) echo "Running on 91~100 combinations..."
		for i in {91..100}
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
				mkdir sub_xs_$j
				cd sub_xs_$j
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
	;;

esac
