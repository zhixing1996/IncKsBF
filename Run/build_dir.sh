#!/usr/bin/env bash

# Main driver to build necessary directories
# Author JING Maoqiang <jingmq@ihep.ac.cn>
# Created [2018-07-19 Thu 20:57] 

if [ ! -d "../Simulation/Logfile" ]; then
	mkdir ../Simulation/Logfile
fi

if [ ! -d "../Simulation/Logfile/job.err" ]; then
	mkdir ../Simulation/Logfile/job.err
fi

if [ ! -d "../Simulation/Logfile/job.out" ]; then
	mkdir ../Simulation/Logfile/job.out
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/CrossSection" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/Parameter" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/RootFile" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixC/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/CrossSection" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/Parameter" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/RootFile" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/FixHs/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/CrossSection" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/Parameter" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/RootFile" ]; then
	mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/SameGF/HsC/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/CrossSection" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/Parameter" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/RootFile" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TenCross/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/CrossSection" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/Parameter" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/RootFile" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/TwentyCross/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/CrossSection" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/Parameter" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/RootFile" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/ThirtyCross/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/CrossSection" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/Parameter" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/RootFile" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FortyCross/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/CrossSection" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/Parameter" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/RootFile" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/PartialRand/FiftyCross/RootFile
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/CrossSection" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/CrossSection
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/Parameter" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/Parameter
fi

if [ ! -d "/besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/RootFile" ]; then
        mkdir /besfs/groups/tauqcd/jingmq/IncKSBF/RandGF/AllRand/TenPercent/RootFile
fi
