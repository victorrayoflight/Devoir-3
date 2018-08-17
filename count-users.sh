#!/bin/bash
id=1000
numuser=0;
while :
do
check=`cat /etc/passwd | grep $id`
if [[ -z "$check" ]]
then
echo -n "there are "
echo -n $numuser
echo " users"
break
else
((id++))
((numuser++))
fi
done

# grep '/home' /etc/passwd -c
# sed 's/:.*//' /etc/passwd
# awk -F: '{ print $1 }' /etc/passwd
# cut -d: -f1 /etc/passwd
# awk -F'[/:]' '{if ($3 >= 1000 && $3 != 65534) print $1}' /etc/passwd
