#!/bin/bash

#
# # crontab:
# #
# lighttpd        ALL = (oneadmin) NOPASSWD: /usr/local/bin/onevm-shutdown-ksinstaller.sh
#

# cgi dir symlinks
# onevm-shutdown-ksinstaller-baseserver-cgi.sh -> /usr/local/bin/onevm-shutdown-ksinstaller-cgi.sh
# onevm-shutdown-ksinstaller-javatomcat-cgi.sh -> /usr/local/bin/onevm-shutdown-ksinstal


echo -e "Content-Type: text/plain", "\n\n"
echo "shutdown initiation..."
set -x
exec 2>&1

bn=$(basename $0)
case $bn in
	"onevm-shutdown-ksinstaller-javatomcat-cgi.sh")
		echo "$bn"
		sudo -u oneadmin /usr/local/bin/onevm-shutdown-ksinstaller.sh javatomcat
		;;
	"onevm-shutdown-ksinstaller-baseserver-cgi.sh")
		echo "$bn"
		sudo -u oneadmin /usr/local/bin/onevm-shutdown-ksinstaller.sh baseserver
		;;
	*)
		echo "error"
		;;
esac
