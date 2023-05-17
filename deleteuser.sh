#!/bin/bash

# Define the username
username="name"

# Define the list of target servers
servers=(
    "ip"
        "ip"
	    "ip"
    )

    # Loop through each server and delete the user
    for server in "${servers[@]}"
    do
	        echo "Deleting user '$username' from $server"

		    # Copy the SSH key to the target server (assuming key-based authentication)
		        ssh-copy-id $server

			    # Delete the user from the target server
			        ssh $server "sudo userdel -r $username"

				    echo "User '$username' deleted from $server"
			    done
