#!/bin/bash

mkdir Combination
cd Combination
for (( i =1;i<101;i= i+1))
do
	mkdir Combination$i
	cd Combination$i
	cp ../../seed_combination/* . -rf
	./ROOTCompile fit_ks_phase
	./fit_ks_phase $i $i
	cd ..
done
