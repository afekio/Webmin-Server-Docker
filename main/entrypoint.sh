#!/bin/bash
bash -c "/etc/webmin/start"
echo 'root:123123' | chpasswd
while true; do
   
    sleep 1
done