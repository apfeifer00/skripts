#!/bin/bash
#### Dieses Script fragt zu erst alle Parameter ab und erstellt danach abhängig von der eingabe Prozesse. ####
echo "Type in the sleep-time of the first task, followed by [ENTER]:"
read -p"Duration? " responseOne

echo "Type in the sleep-time of the second task, followed by [ENTER]:"
read -p"Duration? " responseTwo

echo "Type in the number of Tasks, followed by [ENTER]:"
read -p"Duration? " responseThree
for ((i=0;$i<$responseThree;i++))
do
command $(while true; do echo "Hello World"; sleep $responseOne; done; echo "I´m going to sleep!"; sleep $responseTwo) & 
done