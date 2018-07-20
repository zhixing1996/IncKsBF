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

