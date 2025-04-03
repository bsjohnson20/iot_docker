FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    git \
    make \
    g++

RUN mkdir -p /var/run/sshd
RUN useradd -ms /bin/bash iot
RUN echo "iot:iot" | chpasswd
RUN usermod -aG sudo iot

RUN mkdir -p /home/iot/data && chown -R $UID:$GID /home/iot/data && chmod -R 777 /home/iot/data

WORKDIR /home/iot

EXPOSE 22

COPY entrypoint.sh /root/

RUN chmod +x /root/entrypoint.sh

CMD ["/root/entrypoint.sh"]

