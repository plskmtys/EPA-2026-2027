#!/bin/bash

num_cpu=$(nproc)

if [ $num_cpu -lt $1 ]; then
	echo "ERROR: not enough CPU cores!"
else
	echo "OK"
fi

