#!/usr/bin/env bash

PROJECT_LIST="$(watson projects)"
PROJECTS=($PROJECT_LIST)

for i in "${PROJECTS[@]}"
do
   :
echo "--------------------------------------------------"
echo " $i"
echo "--------------------------------------------------"
watson log -c -d -G --no-pager -p $i
done

echo "--------------------------------------------------"
echo " Working Hours: $(watson report -dcG --ignore-project break | grep "Total: " | sed "s/Total: //")"
echo "--------------------------------------------------"
echo "--------------------------------------------------"
echo " Billable Hours: $(watson report -dcG --ignore-project break --ignore-project internal | grep "Total: " | sed "s/Total: //")"
echo "--------------------------------------------------"
