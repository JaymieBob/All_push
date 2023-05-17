#!/bin/bash

# Define the username and password for the new user
username="name"
password="password"

# Define the list of target servers
servers=(
    "ip"
        "ip"
	    "ip"
    )

    # Loop through each server and create the user
    for server in "${servers[@]}"
    do
	        echo "Creating user '$username' on $server"

		    # Copy the SSH key to the target server (assuming key-based authentication)
		        ssh-copy-id $server

			    # Create the user on the target server
			        ssh $server "sudo useradd -m $username"
				    ssh $server "echo '$username:$password' | sudo chpasswd"

				        echo "User '$username' created on $server"
				done


