#!/bin/bash
echo "IP addr: $(/sbin/ifconfig eth0 | grep 'inet' | awk '{print $2}')"
echo "Hostname: $(hostname)"
echo ${MY_NODE_NAME}

echo -e "IP: \t\t$(/sbin/ifconfig eth0 | grep 'inet' | awk '{print $2}')" > info.txt
echo -e "HOSTNAME: \t$(hostname)" >> info.txt
echo -e "NODE: \t\t${MY_NODE_NAME}" >> info.txt

while true; do { \
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <info.txt)\r\n\r\n"; \
  cat info.txt; } | nc -l -p 8080 ; \ 
done

