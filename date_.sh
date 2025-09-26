#!/bin/bash

start_time=$(date +%s)

sleep 10

end_time=$(date +%s)

Total_time=$(($end_time-$start_time))

echo "Total time taken to execute the script is: $Total_time seconds"