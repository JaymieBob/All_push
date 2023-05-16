#!/bin/bash

# List of servers to change the password for
servers=(
    192.168.123.35
        192.168.123.99
	    192.168.123.8
	        192.168.123.100
		    192.168.123.51
		        192.168.123.204
			    192.168.123.209
			        192.168.123.211
				    192.168.123.36
				        192.168.123.107
					    192.168.123.93
					        192.168.123.94
						    192.168.123.95
						        192.168.123.132
							    192.168.123.133

						    )

						    # Password to set
						    password="./cwg@2022xy"

						    # Loop through each server and change the root password
						    for server in "${servers[@]}"
						    do
							        echo "Changing password on server $server ..."
								    ssh root@$server "echo 'root:$password' | chpasswd"
								        echo "Password changed successfully on server $server"
								done

								echo "All passwords have been changed successfully"

