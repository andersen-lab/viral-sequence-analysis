#!/bin/bash
#PBS -l walltime=6:00:00 -l nodes=1 -q workq -o /gpfs/home/gkarthik/logs/snakelog.txt -j oe

cd /gpfs/home/gkarthik/jobs/zika-pipeline/get_coverage/
snakemake -j 50 --cluster-config cluster.json --cluster "qsub -l walltime={cluster.walltime} -l mem={cluster.mem} -l nodes={cluster.n} -q {cluster.queue} -o {cluster.logfile} -j {cluster.stdout}"
