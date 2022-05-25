#! /bin/bash
awk -F, '{print $1,$4,$10}' event_history.csv >filter.csv
sleep 5
awk '{ if ($1 == "serdar") print $0;}' filter.csv  >serdar.csv
sleep 5
awk '/Terminate/ {print}' serdar.csv >serdar_terminated.csv
sleep 5
awk '{print $3}' serdar_terminated.csv > id.txt
sleep 5
cat id.txt | tr ' ",},] '  " " > results.txt
sleep 5
sed 's/resourceName/Terminated_Ids_By_Serdar/' results.txt >result.txt
cat result.txt

cat event_history.csv | awk -F, '{print $1,$4,$10}'| awk '{ if ($1 == "serdar") print $0;}'| awk '/Terminate/ {print}' | awk '{print $3}' | cat id.txt | tr ' ",},] '  " " | sed 's/resourceName/Terminated_Ids_By_Serdar/'
