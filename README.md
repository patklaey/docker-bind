# README

Documentation to follow

## To run on Ubuntu 16.04+ (systemd-resolved)

As systemd-resolved uses port 53 already, the following steps have to be executed (as root): 

1. Disable and stop systemd-resolved
    ```bash
    systemctl stop systemd-resolved
    systemctl disable systemd-resolved
    ```
1. Remove the current resolv.conf (writted by systemd-resolved)
    ```bash
    rm /etc/resolv.conf
    ```
1. Point resolv conf to the NetworkManagers resolv.conf
    ```bash
    sudo ln -s /var/run/NetworkManager/resolv.conf /etc/resolv.conf
    ```
1. Test DNS resolution
1. Restart the machine and retest DNS resolution