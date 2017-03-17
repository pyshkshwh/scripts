#!/bin/bash
for i in `cat servers`
do
cat ~/.ssh/id_rsa.pub | sshpass -p 'C0mp13x#' ssh root@$i "cat >>  ~/.ssh/authorized_keys"
done
