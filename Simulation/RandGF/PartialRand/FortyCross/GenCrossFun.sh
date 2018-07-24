#!/bin/bash

i=$1

# A function to generate random number ####
function rand(){
	min=$1
	max=$(($2-$min+1))
	num=$(date +%s%N)
	echo $(($num%$max+$min))    
}
###########################################

# decide which sub_xs should have random GF
touch ./temp$i
>temp$i
while [ `sort temp$i | uniq | wc -l` != 40 ] 
do
        echo `expr $RANDOM % 50 + 1` >> temp$i
done
set -a T
index=1
for f in `cat temp$i`
do
        T[index]=$f
        let index=index+1
done
rm temp$i
###########################################

# Generate random number ##################
sum=0
for k in {1..40}
do
	RndGF[$k]=$(rand 1 100)
	let "sum = ${RndGF[$k]} + $sum"
done
###########################################

NUM=1
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
	touch randnum.txt
	touch rand.txt
	if echo "${T[@]}" | grep -w $j &>/dev/null; then
		echo $j >> randnum.txt
		gf=`echo "scale=12; 3.324 * 0.00000001 * 40 * ${RndGF[$NUM]} / $sum " | bc -l`
		echo $gf >> rand.txt
		sed -i s/'seed_GF/'$gf''/g fit_ks_phase.C
		let NUM=NUM+1
	else
		sed -i s/'seed_GF/3.324*0.00000001'/g fit_ks_phase.C
	fi
	touch job
	echo "#!/bin/bash" > job
	echo "./ROOTCompile fit_ks_phase" >> job
	echo "./fit_ks_phase" >> job
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
	./job
	cd ..
done
for k in {1..10}
do
	echo $k >> C.txt
	let "num = $k + 40"
	cd sub_xs_$num
	sed -i s/'seed_C/'$k''/g fit_ks_phase.C
	chmod u+x job
	./job
	cd ..
done
cd ..
