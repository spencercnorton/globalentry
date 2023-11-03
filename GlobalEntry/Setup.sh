#!/bin/bash

# Update the system
echo "Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Install GNOME Desktop Environment
echo "Installing GNOME Desktop Environment..."
sudo apt-get install -y ubuntu-desktop

# Install and configure VNC Server (TigerVNC)
echo "Installing TigerVNC Server..."
sudo apt-get install -y tigervnc-standalone-server tigervnc-common

# Install and configure Guacamole
echo "Installing Guacamole..."
sudo apt-get install -y guacamole guacd libguac-client-vnc libguac-client-ssh libguac-client-rdp
sudo systemctl enable --now guacd

# Configure Guacamole
# Note: You will need to manually configure Guacamole according to your needs.
# This typically involves editing /etc/guacamole/guacamole.properties
# and setting up connections in /etc/guacamole/user-mapping.xml

# Install other tools and utilities
echo "Installing other necessary tools..."
sudo apt-get install -y curl nano htop net-tools

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install Tailscale
echo "Installing Tailscale..."
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/$(lsb_release -cs).gpg | sudo apt-key add -
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/$(lsb_release -cs).list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt-get update -y
sudo apt-get install -y tailscale

# Authenticate Tailscale
echo "Please authenticate Tailscale..."
sudo tailscale up

# Install SMB (Samba)
echo "Installing Samba..."
sudo apt-get install -y samba samba-common-bin
sudo smbpasswd -a $USER

# Install Iperf3
echo "Installing Iperf3..."
sudo apt-get install -y iperf3

# Install Git
echo "Installing Git..."
sudo apt-get install -y git

# Install rsync
echo "Installing rsync..."
sudo apt-get install -y rsync

# Install NVIDIA CUDA Toolkit (and drivers)
echo "Installing NVIDIA CUDA Toolkit..."
sudo apt-get install -y nvidia-cuda-toolkit

# Clean up
echo "Cleaning up..."
sudo apt-get autoremove -y

echo "Installation complete!"
echo "Please configure Samba by editing the smb.conf file:"
echo "sudo nano /etc/samba/smb.conf"
echo "And restart the service: sudo systemctl restart smbd"
echo "Please configure VNC Server by running 'vncserver' to set up your user's VNC password."
echo "Please configure Guacamole by editing /etc/guacamole/guacamole.properties and setting up connections in /etc/guacamole/user-mapping.xml."

# End of the script
