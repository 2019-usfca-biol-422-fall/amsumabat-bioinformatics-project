#!/bin/bash

# A script to unzip and run fastqc on a folder of fastq.gz
# Illumina sequence files

# Adelle Sumabat
# October 30, 2019
# amsumabat@dons.usfca.edu

# move the files to the unzipped directory
echo Copying files...
cp -v /data/my-illumina-sequences/raw/*.gz /data/my-illumina-sequences/unzipped

# unzip the files
echo Unzipping files...
gunzip /data/my-illumina-sequences/unzipped/*

# run fastqc and put output into output folder
echo Running fastqc
fastqc /data/my-illumina-sequences/unzipped/*.fastq --outdir=output/fastqc-results

