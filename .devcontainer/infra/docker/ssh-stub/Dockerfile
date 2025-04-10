FROM ubuntu:latest

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo "root:password" | chpasswd

RUN sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/g" /etc/ssh/sshd_config
RUN sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config

RUN mkdir -p /root/.ssh
RUN chmod 700 /root/.ssh

RUN apt-get install -y sudo

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
