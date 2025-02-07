#!/bin/bash
while :
do
      uptime >>/var/log/LB.log
      sleep 5
      c=`ps -e|wc -l`
      set -x 
      r=`expr $c + 10`
      f=`expr $r + $c`
      set +x
      echo "f=$f"
      va=`expr $r + $c`
      vb=`expr $va + 10`
      echo "vb=$vb"      
done
