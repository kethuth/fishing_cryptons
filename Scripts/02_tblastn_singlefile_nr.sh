#!/usr/bin/bash -l

#SBATCH -A sllstore2017073
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J noniterative_tblastn_nt
#SBATCH --mail-type=ALL
#SBATCH --mail-user karl.nyren.6523@student.uu.se

module load bioinfo-tools
module load blast/2.7.1+

IN_FILE_PATH='/home/karlnyr/research_training_19/crypton_sequences'
OUT_FILE_PATH='/home/karlnyr/research_training_19/blast_queries'
OUT_NAME='kirc_tblastn_020919'

for file in $IN_FILE_PATH/kirc*;
    do
        command tblastn \
        -db nt \
        -query $file \
        -out $OUT_FILE_PATH/$OUT_NAME
done
