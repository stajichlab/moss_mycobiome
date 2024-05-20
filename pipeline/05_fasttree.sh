#!/usr/bin/bash -l
#SBATCH -p batch -c 32 --mem 64gb -N 1 -n 1 --out logs/03_amptk_stats.%A.log

module load fasttree

CPU=2
if [ $SLURM_CPUS_ON_NODE ]; then
  CPU=$SLURM_CPUS_ON_NODE
fi

OUT=results/amptk

fasttree -nt $OUT/Mojave2020_KKelly202307.ASVs.mafft.fasta
