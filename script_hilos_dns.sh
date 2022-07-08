#!/bin/bash -x 

iteraciones=$1
ip=$2
file=$3
hilos=$4

for i in {0..$iteraciones}
do
	dnsperf -s $ip -p 53 -d $file -t 12 -T $hilos  &
done