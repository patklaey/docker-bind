# README

## Installation

Follow those simple steps: 

1. Clone the git repo
    ```bash
    git clone https://github.com/patklaey/docker-bind
    cd docker-bind
    ```
1. Copy the database template and fill it in (replace "your-public-ip-here" with your real public IP (get it from [here](https://whatismyipaddress.com/)))
    ```bash
    cp db.patklaey.ch.template db.patklaey.ch
    vi db.patklaey.ch
    ```
1. Copy the named.conf template and fill it in (replace "your-private-ip-here" with your real private IP (get it from ```ip addr```))
    ```bash
    cp named.conf.template named.conf
    vi named.conf
    ```
1. Start up the containers
    ```bash
    docker-compose up -d
    ```
    
    
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