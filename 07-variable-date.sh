#!/bin/bash
today=$(date)
echo "today date with sec $today"
day=$(date +%y-%m-%d-%h-%M-%S)
sleep 25
end_time=$(date +%y-%m-%d-%h-%M-%S)
total_time=$(($day-$end_time))
echo "total time $total_time"