#!/bin/bash

# use cut, sort, and uniq -c to help you summarize the results from the
# BLAST search.

cut -d, -f1 /data/my-illumina-sequences/blast_output/*.csv | sort | uniq -c | sort -n > /data/my-illumina-sequences/blast_results_overall/*.csv
