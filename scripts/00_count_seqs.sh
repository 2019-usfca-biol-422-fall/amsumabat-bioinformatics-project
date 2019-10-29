#!/bin/bash

# a script to count the number of
# sequences in a set of gzipped fastq
#files

#Adelle Sumabat
# October 29, 2019
# amsumabat@dons.usfca.edu

# count the number of sequences using 
#zgrep
zgrep -c "^+$" /iseq/AS*
