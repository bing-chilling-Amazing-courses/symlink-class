#!/bin/bash
set -e

echo "Hello from the real file" > real.txt
ln -sf real.txt link.txt

echo "Reading through the symlink:"
cat link.txt

echo
ls -l link.txt
##We can link to any file, another thing is that we can access that file, shadow.bk its a example
echo
ln -s /etc/shadow.bk /tmp/user
