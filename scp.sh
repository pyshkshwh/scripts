#!/bin/bash
for i in `cat servers`
do
echo $i
sshpass -p 'C0mp13x#' scp key.sh root@$i:/home/
sshpass -p 'C0mp13x#' ssh -o StrictHostKeyChecking=no root@$i <<EOF
sudo cp -v /home/key.sh /opt/
EOF
done
