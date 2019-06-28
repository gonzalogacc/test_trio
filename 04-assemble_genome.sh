#!/bin/bash -e

PREFIX=$1
~/Documents/git_sources/w2rap-contigger/build/bin/w2rap-contigger -1 ${PREFIX}/${PREFIX}-pe-reads_R1.fastq -2 ${PREFIX}/${PREFIX}-pe-reads_R2.fastq -o ${PREFIX}/assembly/ -p $PREFIX -t 4 --max_memory 4 --dump_all 1
