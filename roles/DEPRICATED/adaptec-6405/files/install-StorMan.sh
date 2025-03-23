#!/usr/bin/bash

if [ "`/usr/bin/rpm -q StorMan`" == "package StorMan is not installed" ]

then
        # Microsemi rpm is a mess, need to do all this junk as a result
	echo "Installing StorMan..."
	/usr/bin/expect <<- DONE
		set timeout -1
		spawn rpm -ivh /tmp/msm/manager/StorMan-2.05-22932.x86_64.rpm
		expect "Do you want to install maxView in Standalone Mode:"
		sleep 1
		send "no\r"
		expect "Enter CIM Server HTTP Port:"
		sleep 1
		send "5988\r"
                sleep 60
DONE
	/usr/sbin/restorecon -RF /etc/rc.d/init.d/stor_{cimserver,agent,tomcat} /usr/StorMan
        rm -f /var/lib/rpm/.rpm.lock
        rpm --rebuilddb
        echo "done!"
else
	echo "StorMan already installed"
fi
exit 0
