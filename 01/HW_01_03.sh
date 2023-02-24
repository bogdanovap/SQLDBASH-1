#!/bin/bash

function get_avg_size(){
dir_name=$1

if [[ -d $dir_name ]];
then
	size_total=0
	count=0
	file_sizes=$(stat -c '%s' $( find $dir_name/* -prune -type f ))
	for s in $file_sizes; do
#		echo $s 
#		echo $size_total
		let size_total=$size_total+$s
		let count=$count+1
	done
	let size_avg=$size_total/$count
	echo "Average size = $size_avg"
else
	echo "$dir_name - not a directory";
fi
}

get_avg_size $1
