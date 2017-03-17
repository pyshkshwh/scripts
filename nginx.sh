#!/bin/bash
for i in `cat servers`
do
sshpass -p 'C0mp13x#' ssh -o StrictHostKeyChecking=no root@$i <<EOF
hostname
cp -prvf /etc/nginx/nginx.conf /etc/nginx/nginx.conf-`date +%F`
/etc/init.d/nginx stop
echo "--------------------------------------------------------------"
EOF
done
