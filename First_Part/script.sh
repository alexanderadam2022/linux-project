cat event_history.csv | grep serdar | grep -i Terminateinstance | grep -Eo "i-[a-zA-Z0-9]{17}" > /tmp/result.txt
cat event_history.csv | grep "serdar" | grep -i "Terminate" | grep -Eo  "i-[a-zA-Z0-9]{17}" | sort | uniq > result.txt
cat event_history.csv | grep "serdar" | grep -i "Terminate" | grep -Eo  "i-.{17}" | sort | uniq > result.txt
cat event_history.csv | grep "serdar" | grep -i "Terminate" | grep -o  "i-.\{17\}"| sort | uniq > result.txt
