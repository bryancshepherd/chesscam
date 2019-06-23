#!/bin/bash

# Date
dt=`date +"%d-%b-%Y-%H-%M"`

# Unique group id
randid=`openssl rand -hex 2`

# Group number
gn=${randid}_${dt}

# Total time in milliseconds
let "totaltime=${1} * 1000"

# Periodicity in milliseconds
let "period=${2} * 1000"

# Create path and file names
foldername=gn_${gn}
imagename=${foldername}

mkdir -p ../../data/staging/photos/${foldername}

# Burst mode timelapse 
raspistill -t ${totaltime} -tl ${period} \
-o ../../data/staging/photos/${foldername}/${imagename}_%04d.jpg \
-n -bm -h 1024 -w 1024

echo 'Finished'
