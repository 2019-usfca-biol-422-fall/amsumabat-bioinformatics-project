#!/bin/bash

# use cut, sort, and uniq -c to help you summarize the results from the
# BLAST search.

# analyze overall blast results 

cut -d, -f1 /data/my-illumina-sequences/blast_output/*.csv | sort | uniq -c | sort -n > /data/my-illumina-sequences/blast_results_overall/overall_results

# analyze blast results individually

for blastresults in /data/my-illumina-sequences/blast_output/*.csv
do
echo processing "$blastresults"
cut -d, -f1 "$blastresults" | sort | uniq -c | sort -n > /data/my-illumina-sequences/blast_results_summarization/"$(basename -s .csv "$blastresults")"_summarized.csv
done