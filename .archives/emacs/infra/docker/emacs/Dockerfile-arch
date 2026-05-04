FROM archlinux:latest

USER root
RUN mkdir /opt/org

RUN pacman -Syu --noconfirm && \
    pacman -S --needed --noconfirm \
        make \
        git \
        sudo \
        emacs \
        vim \
        # neofetch \
        trash-cli

# Add user
ARG USER=myzn
ARG PASSWORD=password
RUN sudo useradd -m $USER && \
    # Set password
    echo "${USER}:${PASSWORD}" | chpasswd && \
    # Add the user into wheel group to use sudo command
    sudo usermod -aG wheel ${USER} && \
    echo "root:${PASSWORD}" | chpasswd && \
    # Add the user in /etc/sudoers to use sudo command
    echo "${USER} ALL=(ALL) ALL" >> /etc/sudoers

USER ${USER}
