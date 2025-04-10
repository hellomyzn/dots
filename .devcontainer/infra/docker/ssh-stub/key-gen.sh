#!/bin/bash

mkdir -p ssh
KEY_DIR=$(pwd)
if [ $1 = "rsa" ]; then
    ssh-keygen -t rsa -C "test-key" -m PEM -f ${KEY_DIR}/ssh/id_rsa -N ""
else
    ssh-keygen -t ed25519 -C "test-key" -m PEM -f ${KEY_DIR}/ssh/id_ed25519 -N ""
fi

if [ "$(id -u)" != "0" ]; then
    sudo chown -R root: ssh/*.pub
fi

chmod 700 ssh
