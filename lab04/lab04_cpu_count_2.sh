#!/bin/bash

num_cpu=$(nproc)

if [ ! $1 ]; then
	echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
	exit 2
fi

if [ $num_cpu -lt $1 ]; then
	echo "ERROR: not enough CPU cores!"
else
	echo "OK"
fi

