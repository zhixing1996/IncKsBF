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
	printf "\n\t%-5s  %-40s\n"  "0.1.4"    "[Run on random partial width(ten cross sections)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.5"    "[Run on random partial width(twenty cross sections)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.6"    "[Run on random partial width(thirty cross sections)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.7"    "[Run on random partial width(forty cross sections)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.8"    "[Run on random partial width(fifty cross sections)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.9"    "[Run on random partial width(10% dominant)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.10"    "[Run on random partial width(20% dominant)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.11"    "[Run on random partial width(30% dominant)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.12"    "[Run on random partial width(40% dominant)]" 
	printf "\n\t%-5s  %-40s\n"  "0.1.13"    "[Run on random partial width(50% dominant)]" 
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

	0.1.4) echo "Running on random partial width(ten cross sections)..."
	cd ../Simulation/RandGF/PartialRand/TenCross
	./sub_job.sh
	;;

	0.1.5) echo "Running on random partial width(twenty cross sections)..."
	cd ../Simulation/RandGF/PartialRand/TwentyCross
	./sub_job.sh
	;;

	0.1.6) echo "Running on random partial width(thirty cross sections)..."
	cd ../Simulation/RandGF/PartialRand/ThirtyCross
	./sub_job.sh
	;;

	0.1.7) echo "Running on random partial width(forty cross sections)..."
	cd ../Simulation/RandGF/PartialRand/FortyCross
	./sub_job.sh
	;;

	0.1.8) echo "Running on random partial width(fifty cross sections)..."
	cd ../Simulation/RandGF/PartialRand/FiftyCross
	./sub_job.sh
	;;

	0.1.9) echo "Running on random partial width(10% dominant)..."
	cd ../Simulation/RandGF/AllRand/TenPercent
	./sub_job.sh
	;;

	0.1.10) echo "Running on random partial width(20% dominant)..."
	cd ../Simulation/RandGF/AllRand/TwentyPercent
	./sub_job.sh
	;;

	0.1.11) echo "Running on random partial width(30% dominant)..."
	cd ../Simulation/RandGF/AllRand/ThirtyPercent
	./sub_job.sh
	;;

	0.1.12) echo "Running on random partial width(40% dominant)..."
	cd ../Simulation/RandGF/AllRand/FortyPercent
	./sub_job.sh
	;;

	0.1.13) echo "Running on random partial width(50% dominant)..."
	cd ../Simulation/RandGF/AllRand/FiftyPercent
	./sub_job.sh
	;;

esac
