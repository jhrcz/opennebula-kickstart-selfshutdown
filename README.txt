pouziti v kickstartu:

# self-shutdown a saveas instaltoru, vyuziva cgi na strane opennebula mgmt
curl -v http://cloudmgmt.etn/cgi-bin/onevm-shutdown-ksinstaller-javatomcat-cgi.sh 2>&1 | tee /root/installer-selft-shutdown.txt

opennebula potrebuje aby bylo mozne sestrelit bez pouziti acpi

FEATURES=[ acpi="no" ]
