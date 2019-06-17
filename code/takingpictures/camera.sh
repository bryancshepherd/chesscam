#!/bin/bash

# Date
dt=`date +"%d-%b-%Y-%H-%M"`

# Unique group id
randid=`openssl rand -hex 2`

# Group number
gn=${dt}_${randid}

# Total time in milliseconds
totaltime=${1}

# Periodicity in milliseconds
period=${2}

# Create path and file names
foldername=gn_${gn}
imagename=${foldername}

mkdir -p ../../data/staging/photos/${foldername}

# Burst mode timelapse 
raspistill -t ${totaltime} -tl ${period} \
-o ../../data/staging/photos/${foldername}/${imagename}_%04d.jpg \
-n -bm -h 600 -w 1024
