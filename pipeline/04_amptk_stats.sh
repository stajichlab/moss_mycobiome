#!/usr/bin/bash -l
#SBATCH -p batch -c 32 --mem 64gb -N 1 -n 1 --out logs/03_amptk_stats.%A.log

CPU=2
if [ $SLURM_CPUS_ON_NODE ]; then
  CPU=$SLURM_CPUS_ON_NODE
fi

module load amptk
OUT=results/amptk
mkdir -p $OUT
IN=$(realpath input)
BASE=Mojave2020_KKelly202307  # Corrected BASE variable

pushd $OUT
if [ ! -f $BASE.ASVs.tree.phy ]; then  # Corrected conditional statement
    amptk stats -i $OUT/test.biom -t $BASE.ASVs.tree.phy
fi  # Added 'fi' to close the conditional statement
popd
