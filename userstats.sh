#!/bin/bash
for i in `cat servers`
do
sshpass -p 'C0mp13x#' ssh -o StrictHostKeyChecking=no root@$i << EOF
echo ""
hostname
echo "Hello, $LOGNAME"
echo "Current date is: `date`"
echo "User is `who i am`"
echo -n "Current directory is: "
pwd
echo ""
EOF
done
