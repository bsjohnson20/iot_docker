**UNI Docker Image**
======================

Docker image to avoid relying on the CSCT cloud server, contains g++ and catch2 with Poco installed 

**Getting Started**
---------------

To use this image, you'll need to have Docker installed on your system. Once you have Docker up and running, you can build the image using the provided `dockerfile`.


### Running+Building

To start a new container from the `uni` image, run the following command:
```bash
./build.sh
```

if permissio denied try:
```chmod +x ./build.sh```

This will start a new container with ssh port at 2222
### Accessing the Container

You can access the container using SSH. The username and password are both set to `iot`. You can use the following command to connect:
```bash
ssh iot@localhost -p 2222
```
**Directory Structure**
----------------------

The container has the following directory structure:

* `/home/iot`: The home directory for the `iot` user.
* `/home/iot/data`: A directory for storing data. This directory is mounted as a volume from the host machine.
* `/opt/iot`: Directory for compiling headers for the IOT project

**Services**
------------

The container runs the following services:

* SSH server: Listening on port 22 (mapped to port 2222 on the host machine).

**Configuration**
-----------------

The container uses the following configuration files:

* `entrypoint.sh`: The entrypoint script that sets up the container and starts the SSH server.
