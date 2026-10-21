#! /bin/sh
current=0
total=0
current=$(dcop amarok player trackCurrentTime)
total=$(dcop amarok player trackTotalTime)

if [ $total = 0 ]; then 
    result=0
else 
    part1=$[$current*100]
    result=$[$part1/total]
fi
echo $result


