#!/bin/sh

ssh-keyscan $SSH_HOST >> ~/.ssh/known_hosts

while true; do ssh -i $ID_FILE -nNT -o GatewayPorts=true -o ServerAliveInterval=60 -o ServerAliveCountMax=10 -L $LOCAL_PORT:$REMOTE_HOST:$REMOTE_PORT $SSH_USER@$SSH_HOST; sleep 10; done

