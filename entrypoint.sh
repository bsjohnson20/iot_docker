#!/bin/sh

chown -R iot:iot /home/iot/data
chmod -R 777 /home/iot/data

echo "Updated permissions"

# start ssh server
/usr/sbin/sshd -D




# container will be running forever
sleep infinity