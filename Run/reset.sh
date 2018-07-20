#!/usr/bin/env bash

# Reset the programs
# Author Maoqiang Jing <jingmq@ihep.ac.cn>
# Created [2018-07-20 Fri 08:55]

usage() {
	printf "NAME\n\trun.sh - Reset the programs\n"
	printf "\nSYNOPSIS\n"
	printf "\n\t%-5s\n" "./reset.sh [OPTION]"
	printf "\nOPTIONS\n"    
	printf "\n\t%-9s  %-40s"  "0.1.1"      "Clean files for combinations of SameGF(FixC)"
	printf "\n\t%-9s  %-40s"  "1.0"      "[Clean all]"
}


if [[ $# -eq 0 ]]; then
	usage
	printf "\nPlease enter your option: "
	read option
else
	option=$1
fi

case $option in

	0.1.1) echo "Cleaning files for combinations of SameGF(FixC)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/*/* -rf
		rm ../Simulation/SameGF/FixC/Hs -rf
		rm ../Simulation/SameGF/FixC/Combination -rf
	;;
	
	1.0) echo "Cleaning all..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF -rf
		rm ../Simulation/Logfile -rf
		
		rm ../Simulation/SameGF/FixC/Hs -rf
		rm ../Simulation/SameGF/FixC/Combination -rf
	;;

esac
