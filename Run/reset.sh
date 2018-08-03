#!/usr/bin/env bash

# Reset the programs
# Author Maoqiang Jing <jingmq@ihep.ac.cn>
# Created [2018-07-20 Fri 08:55]

usage() {
	printf "NAME\n\trun.sh - Reset the programs\n"
	printf "\nSYNOPSIS\n"
	printf "\n\t%-5s\n" "./reset.sh [OPTION]"
	printf "\nOPTIONS\n"    
	printf "\n\t%-9s  %-40s"  "0.1.1"      "[Clean files for combinations of SameGF(FixC)]"
	printf "\n\t%-9s  %-40s"  "0.1.2"      "[Clean files for combinations of SameGF(FixHs)]"
	printf "\n\t%-9s  %-40s"  "0.1.3"      "[Clean files for combinations of SameGF(HsC)]"
	printf "\n\t%-9s  %-40s"  "0.1.4"      "[Clean files for combinations of RandGF(TenCross)]"
	printf "\n\t%-9s  %-40s"  "0.1.5"      "[Clean files for combinations of RandGF(TwentyCross)]"
	printf "\n\t%-9s  %-40s"  "0.1.6"      "[Clean files for combinations of RandGF(ThirtyCross)]"
	printf "\n\t%-9s  %-40s"  "0.1.7"      "[Clean files for combinations of RandGF(FortyCross)]"
	printf "\n\t%-9s  %-40s"  "0.1.8"      "[Clean files for combinations of RandGF(FiftyCross)]"
	printf "\n\t%-9s  %-40s"  "0.1.9"      "[Clean files for combinations of RandGF(TenPercent)]"
	printf "\n\t%-9s  %-40s"  "0.1.10"      "[Clean files for combinations of RandGF(TwentyPercent)]"
	printf "\n\t%-9s  %-40s"  "0.1.11"      "[Clean files for combinations of RandGF(ThirtyPercent)]"
	printf "\n\t%-9s  %-40s"  "0.1.12"      "[Clean files for combinations of RandGF(FortyPercent)]"
	printf "\n\t%-9s  %-40s"  "0.1.13"      "[Clean files for combinations of RandGF(FiftyPercent)]"
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
		rm ../Simulation/SameGF/FixC/Fit -rf
	;;

	0.1.2) echo "Cleaning files for combinations of SameGF(FixHs)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/*/* -rf
		rm ../Simulation/SameGF/FixHs/C -rf
		rm ../Simulation/SameGF/FixHs/Fit -rf
	;;

	0.1.3) echo "Cleaning files for combinations of SameGF(HsC)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/*/* -rf
		rm ../Simulation/SameGF/HsC/HsC -rf
		rm ../Simulation/SameGF/HsC/Fit -rf
	;;
	
	0.1.4) echo "Cleaning files for combinations of RandGF(TenCross)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/*/* -rf
		rm ../Simulation/RandGF/PartialRand/TenCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/TenCross/Fit -rf
	;;

	0.1.5) echo "Cleaning files for combinations of RandGF(TwentyCross)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/*/* -rf
		rm ../Simulation/RandGF/PartialRand/TwentyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/TwentyCross/Fit -rf
	;;

	0.1.6) echo "Cleaning files for combinations of RandGF(ThirtyCross)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/*/* -rf
		rm ../Simulation/RandGF/PartialRand/ThirtyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/ThirtyCross/Fit -rf
	;;

	0.1.7) echo "Cleaning files for combinations of RandGF(FortyCross)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/*/* -rf
		rm ../Simulation/RandGF/PartialRand/FortyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/FortyCross/Fit -rf
	;;

	0.1.8) echo "Cleaning files for combinations of RandGF(FiftyCross)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/*/* -rf
		rm ../Simulation/RandGF/PartialRand/FiftyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/FiftyCross/Fit -rf
	;;

	0.1.9) echo "Cleaning files for combinations of RandGF(TenPercent)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/*/* -rf
		rm ../Simulation/RandGF/AllRand/TenPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/TenPercent/Fit -rf
	;;

	0.1.10) echo "Cleaning files for combinations of RandGF(TwentyPercent)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TwentyPercent/*/* -rf
		rm ../Simulation/RandGF/AllRand/TwentyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/TwentyPercent/Fit -rf
	;;

	0.1.11) echo "Cleaning files for combinations of RandGF(ThirtyPercent)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/ThirtyPercent/*/* -rf
		rm ../Simulation/RandGF/AllRand/ThirtyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/ThirtyPercent/Fit -rf
	;;

	0.1.12) echo "Cleaning files for combinations of RandGF(FortyPercent)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/FortyPercent/*/* -rf
		rm ../Simulation/RandGF/AllRand/FortyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/FortyPercent/Fit -rf
	;;

	0.1.13) echo "Cleaning files for combinations of RandGF(FiftyPercent)..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/FiftyPercent/*/* -rf
		rm ../Simulation/RandGF/AllRand/FiftyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/FiftyPercent/Fit -rf
	;;

	1.0) echo "Cleaning all..."
		rm /besfs/groups/tauqcd/jingmq/IncKSBF -rf
		rm ../Simulation/Logfile -rf
		
		rm ../Simulation/SameGF/FixC/Hs -rf
		rm ../Simulation/SameGF/FixC/Fit -rf
		rm ../Simulation/SameGF/FixHs/C -rf
		rm ../Simulation/SameGF/FixHs/Fit -rf
		rm ../Simulation/SameGF/HsC/HsC -rf
		rm ../Simulation/SameGF/HsC/Fit -rf
		rm ../Simulation/RandGF/PartialRand/TenCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/TenCross/Fit -rf
		rm ../Simulation/RandGF/PartialRand/TwentyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/TwentyCross/Fit -rf
		rm ../Simulation/RandGF/PartialRand/ThirtyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/ThirtyCross/Fit -rf
		rm ../Simulation/RandGF/PartialRand/FortyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/FortyCross/Fit -rf
		rm ../Simulation/RandGF/PartialRand/FiftyCross/HsC -rf
		rm ../Simulation/RandGF/PartialRand/FiftyCross/Fit -rf
		rm ../Simulation/RandGF/AllRand/TenPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/TenPercent/Fit -rf
		rm ../Simulation/RandGF/AllRand/TwentyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/TwentyPercent/Fit -rf
		rm ../Simulation/RandGF/AllRand/ThirtyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/ThirtyPercent/Fit -rf
		rm ../Simulation/RandGF/AllRand/FortyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/FortyPercent/Fit -rf
		rm ../Simulation/RandGF/AllRand/FiftyPercent/HsC -rf
		rm ../Simulation/RandGF/AllRand/FiftyPercent/Fit -rf
	;;

esac
