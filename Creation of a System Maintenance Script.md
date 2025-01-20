
### Instructions
#### Creation of a System Maintenance Script 

Create a Bash script named `system_maintenance.sh` (you can create it wherever you like) that performs the following tasks:
```console
    touch system_maintenance.sh
```
1. **System Update:**
    - Update the system packages.
```console
    sudo apt update
    sudo apt upgrade -y
```
2. **Package Cleanup:**
    - Remove unnecessary packages and clean the cache.
 ```console
    sudo apt autoremove -y
```
3. **Disk Status Check:**
    - Display disk usage.
```console
    sudo df -h
```
4. **Active Users Check:**
    - List currently connected users.
```console
    who
```

5. **CPU Processes Check:**
    - Display the top 5 processes consuming the most CPU.
```console
    top -b -n 1 | head -n 12
```

**Here is the complete script:**
```console
    #!/bin/bash
    # Script to manage system maintenance tasks

    # Update the system
    echo "Updating the system"
    sudo apt update

    echo "Upgrading the system"
    sudo apt upgrade -y 

    # Remove unnecessary packages and clean the cache
    echo "Cleaning the system"
    sudo apt autoremove -y

    # Display disk usage
    echo "Disk usage"
    sudo df -h

    # List currently connected users
    echo "Connected users"
    who 

    # Display the top 5 processes consuming the most CPU
    echo "Top 5 processes consuming the most CPU"
    top -b -n 1 | head -n 12
```


**Save the script and make it executable**
```console 
chmod +x system_maintenance.sh
```

**Run the script and save the output to a file**
```console
./system_maintenance.sh > maintenance_output.txt 2>&1
```

