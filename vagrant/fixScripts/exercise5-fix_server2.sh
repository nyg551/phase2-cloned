#!/bin/bash
#add fix to exercise5-server2 here
#the solution was based on: https://linuxize.com/post/how-to-setup-passwordless-ssh-login/

ssh-keygen -t rsa -b 4096 -C "a@server1"
ssh-copy-id a@server1
ssh a@server1
