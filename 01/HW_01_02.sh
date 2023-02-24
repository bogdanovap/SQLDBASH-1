#!/bin/bash

while true; do
date
loadavg=cat /proc/loadavg
echo $loadavg
sleep 5
done
