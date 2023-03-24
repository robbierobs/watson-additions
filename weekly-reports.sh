#!/usr/bin/env sh

PROJECT_LIST="$(watson projects)"
PROJECTS=($PROJECT_LIST)

for i in "${PROJECTS[@]}"
do
   :
echo "--------------------------------------------------"
echo " $i"
echo "--------------------------------------------------"
watson log -cwG --no-reverse --no-pager -p $i
read -p "Press enter to continue"

done
