#!/bin/bash

# extract opt.tar
tar -xvf opt.tar

docker build -t iot .

# check if docker compose is installed or docker compose is 
if command -v docker compose &> /dev/null
then
    docker compose up -d
elif command -v docker-compose &> /dev/null
then
    docker-compose up -d
else
    echo "Docker compose is not installed"
    exit 1
fi

echo -e "Docker container ssh at: 2222\nLogin using:\nUsername: iot\nPassword: iot\nssh command: ssh iot@localhost -p 2222"