#!/bin/bash

echo ""
echo "----------------------------------------------------------------"
echo ""

read -p "Enter server name (e.g., www.google.com): " server_name


ip_address=$(dig +short "$server_name")

if [ -z "$ip_address" ]; then
    echo "Could not resolve the server name."
    echo ""
    echo "--------------------------------------------------------------"
    echo ""
    exit 1
fi

echo "IP address of $server_name is: $ip_address"

ping -c 5 "$server_name"

if [ $? -eq 0 ]; then
    echo ""
    echo "Ping successful. The server is reachable."
else
    echo ""
    echo "Ping failed. The server is not reachable."
fi

echo ""
echo "------------------------------------------------------------------"
echo ""
