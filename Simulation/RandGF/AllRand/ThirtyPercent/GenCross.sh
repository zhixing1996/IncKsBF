#!/bin/bash

# A function to generate random number
function rand(){
	min=$1
	max=$(($2-$min+1))
	num=$(date +%s%N)
	echo $(($num%$max+$min))    
}

if [ ! -d "HsC" ]; then
        mkdir HsC
fi

cd HsC

option=$1

case $option in
	0.1) echo "Running on 1~10 combinations..."
		for i in {1..10}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.2) echo "Running on 11~20 combinations..."
		for i in {11..20}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.3) echo "Running on 21~30 combinations..."
		for i in {21..30}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.4) echo "Running on 31~40 combinations..."
		for i in {31..40}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.5) echo "Running on 41~50 combinations..."
		for i in {41..50}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.6) echo "Running on 51~60 combinations..."
		for i in {51..60}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.7) echo "Running on 61~70 combinations..."
		for i in {61..70}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.8) echo "Running on 71~80 combinations..."
		for i in {71..80}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	0.9) echo "Running on 81~90 combinations..."
		for i in {81..90}
		do
			source ../GenCrossFun.sh $i
		done
	;;

	1.0) echo "Running on 91~100 combinations..."
		for i in {91..100}
		do
			source ../GenCrossFun.sh $i
		done
	;;

esac
