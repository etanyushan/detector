#!/bin/sh
for i in 'ipcs -q | grep '^[0-9]' | awk '{print $2}''
do
  ipcrm -q $i
done
