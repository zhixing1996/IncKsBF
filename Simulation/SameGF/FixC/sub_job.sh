#!/bin/bash
cd job
for i in {1..10}
do 
	hep_sub -g physics job_SameGF_FixC_$i -o ../../../Logfile/job.out -e ../../../Logfile/job.err
done
