#!/bin/bash
# Script to manage system maintenance tasks
echo "updating the system"
sudo apt update

echo "upgrading the system"
sudo apt upgrade -y 


#Remove unnecessary packages and clean the cache.
echo "cleaning the system"
sudo apt autoremove -y

#Display disk usage
echo "disk usage"
sudo df -h

#List currently connected users
echo "connected users"
who 


# Display the top 5 processes consuming the most CPU
echo "Top 5 processes consuming the most CPU"
top -b -n 1 | head -n 12


