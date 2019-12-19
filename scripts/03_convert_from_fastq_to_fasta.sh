#!/bin/bash

# convert to fasta for BLAST
# you need to modify this to save the converted fasta file to a file
# instead of printing to the screen
# you'll need to turn this into a for loop too
for trimmed_fastq_files in /data/my-illumina-sequences/trimmed/AS*.trim.fastq
do
echo converting...
bioawk -c fastx '{print ">"$name"\n"$seq}' "$trimmed_fastq_files" > /data/my-illumina-sequences/trimmed-fasta/"$(basename -s .fastq "$trimmed_fastq_files")".fasta
echo finished converting
done
