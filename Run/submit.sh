#!/usr/bin/env bash

# Main driver to submit jobs 
# Author JING Maoqiang <jingmq@ihep.ac.cn>
# Created [2018-07-19 Thu 20:57] 

usage() {
	printf "NAME\n\tsubmit.sh - Main driver to submit jobs\n"
	printf "\nSYNOPSIS\n"
	printf "\n\t%-5s\n" "./submit.sh [OPTION]" 
	printf "\nOPTIONS\n" 
	printf "\n\t%-5s  %-40s\n"  "0.1.1"    "[Run on same partial width(fix C)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.2"    "[Run on same partial width(fix Hs)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.3"    "[Run on same partial width(HsC)]" 
	printf "\nDATE\n"
	printf "\n\t%-5s\n" "JULY 2018"
}


if [[ $# -eq 0 ]]; then
	usage
fi


option=$1

echo "Building necessary directories..."

./build_dir.sh

case $option in 
	0.1.1) echo "Running on same partial width(fix C)..."
	cd ../Simulation/SameGF/FixC
	./sub_job.sh
	;;

	0.1.2) echo "Running on same partial width(fix Hs)..."
	cd ../Simulation/SameGF/FixHs
	./sub_job.sh
	;;

	0.1.3) echo "Running on same partial width(HsC)..."
	cd ../Simulation/SameGF/HsC
	./sub_job.sh
	;;

esac

