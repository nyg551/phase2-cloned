#!/bin/bash
#add fix to exercise6-fix here
# arguments: $1 (file1) , $2 (file2), $3(to)

#this line will find the last argument (path):
for i in $@; do :; done

#copy all other arguments to path
for j in {1..i-1}
do
   cp "$j" a@server2.fi:$i
   sum_sizes = sum_sizes + $(wc -c "$j");
done
echo sum_sizes;
