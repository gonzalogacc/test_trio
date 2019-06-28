#!/bin/bash -e

PREFIX=$1

bioawk -c'fastx' '{print "@"$name"\n"revcomp($seq)"\n+\n"$qual}' ${PREFIX}/${PREFIX}-pe-reads.fastq > ${PREFIX}/${PREFIX}-pe-reads.rc.fastq

#pei
cat ${PREFIX}/${PREFIX}-pe-reads.rc.fastq | grep -B3 _R1 | grep -v "^--$" > ${PREFIX}/${PREFIX}-pe-reads_R1.fastq
cat ${PREFIX}/${PREFIX}-pe-reads.rc.fastq | grep -B3 _R2 | grep -v "^--$" > ${PREFIX}/${PREFIX}-pe-reads_R2.fastq

# linked reads
cat ${PREFIX}/${PREFIX}-link-reads.fastq | grep -B3 _R1 | grep -v "^--$" > ${PREFIX}/${PREFIX}-link-reads_R1.fastq
cat ${PREFIX}/${PREFIX}-link-reads.fastq | grep -B3 _R2 | grep -v "^--$" > ${PREFIX}/${PREFIX}-link-reads_R2.fastq
