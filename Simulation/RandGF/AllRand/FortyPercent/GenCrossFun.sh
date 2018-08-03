#!/bin/bash

i=$1

# A function to generate random number
function rand(){    
    min=$1    
    max=$(($2-$min+1))    
    num=$(date +%s%N)    
    echo $(($num%$max+$min))    
}    

mkdir Combination$i
cd Combination$i
for j in {1..50}
do
	RndHs[$j]=$(rand 1 10000)
	decimal=`echo "scale=4; ${RndHs[$j]} / 10000 " | bc -l`
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
	touch sub
	echo "hep_sub -g physics job" > sub
	chmod u+x job
	cd ..
done
for k in {1..40}
do
	RndC[$k]=$(rand 1 10000)
	decimal=`echo "scale=4; ${RndC[$k]} / 10000 " | bc -l`
	C="0"$decimal
	touch C.txt
	echo $C >> C.txt
	cd sub_xs_$k
	sed -i s/'seed_C/'$C''/g fit_ks_phase.C
	cd ..
done
for k in {1..10}
do
	echo $k >> C.txt
	let "num = $k + 40"
	cd sub_xs_$num
	sed -i s/'seed_C/'$k''/g fit_ks_phase.C
	cd ..
done
dominantrnd=$(rand 1 50)
cd sub_xs_$dominantrnd
sed -i s/'seed_GF/3.324*0.00000001*50*0.4'/g fit_ks_phase.C
./job
cd ..
touch GF.txt
touch dominant_num.txt
echo "3.324*0.00000001*50*0.4" > GF.txt
echo $dominantrnd > dominant_num.txt
sum=0
for k in {1..49}
do
	IntRnd[$k]=$(rand 1 100)
	let "sum = ${IntRnd[$k]} + $sum"
done
m=1
for j in {1..50} 
do
	if [ "$j" != "$dominant" ]; then
		gf=`echo "scale=15; 3.324 * 0.00000001 * 50 * 0.6 * ${IntRnd[$m]} / $sum " | bc -l`
		cd sub_xs_$j
		sed -i s/'seed_GF/'$gf''/g fit_ks_phase.C
		./job
		let "m = $m + 1"
		cd ..
		echo $gf >> GF.txt
	fi
done
cd ..
