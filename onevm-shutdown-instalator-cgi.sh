#!/bin/bash

#
# # crontab:
# #
# lighttpd        ALL = (oneadmin) NOPASSWD: /usr/local/bin/onevm-shutdown-instalator.sh
#


echo -e "Content-Type: text/plain", "\n\n"
echo "shutdown initiation..."
set -x
exec 2>&1
sudo -u oneadmin /usr/local/bin/onevm-shutdown-instalator.sh
