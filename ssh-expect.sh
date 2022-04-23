#!/usr/bin/expect

set timeout -1

destination_user=$1
destination_pass=$2
destination_ip=$3
destination_path=$4
destination_port=$5

spawn rsync -a /var/www/html/ $destination_user@$destination_ip:$destination_path -e "ssh -o StrictHostKeyChecking=no -p $destination_port"
expect "password:"
send "$destination_pass";
#interact
#expect EOF
