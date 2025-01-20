### Instructions

1. **Create a User:**
    - Create a new user called `devuser`.
    - Assign a secure password to `devuser`.

    ```console
    sudo adduser devuser
    ```

2. **Developers Group:**
    - Create a group called `developers`.
    - Add `devuser` to the `developers` group.

    ```console
    sudo groupadd developers
    sudo usermod -aG developers devuser
    ```

3. **Project Directory:**
    - Create a directory called `/opt/devproject`.
    - Change the ownership of the directory to belong to `devuser` and the `developers` group.
    - Assign read, write, and execute permissions to the owner and the group, but only read and execute permissions to other users.

    ```console
    sudo mkdir /opt/devproject
    sudo chown devuser:developers /opt/devproject
    sudo chmod 775 /opt/devproject
    ```