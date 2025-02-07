1. Create a User devops_user and Add to Group devops_team
============================================================


sudo groupadd devops_team      # Create the group
sudo useradd -m -G devops_team devops_user  # Create user and add to group
The -m flag creates a home directory for the user.


2. Set a Password for devops_user
==================================

sudo passwd devops_user    #It will prompt you to enter and confirm a new password.


3. Grant Sudo Access to devops_user
=====================================

sudo usermod -aG sudo devops_user



4. Restrict SSH Login for Certain Users
=======================================

To restrict SSH access for specific users, edit the SSH configuration file:
i) sudo vim /etc/ssh/ssh_config

ii) DenyUsers user1 user2      # Restrict SSH for specific users
    AllowUsers devops_user omkar  # Allow only these users to SSH

iii) sudo systemctl restart ssh   #After making changes, restart the SSH service:


Verification
============
id devops_user   #Check user and group

sudo -l -U devops_user  #Test sudo access

ssh user1@server_ip  # Should be denied                                            
ssh devops_user@server_ip  # Should be allowed                Confirm SSH restrictions:





















