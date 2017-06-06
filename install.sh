#!/bin/bash

#Checking whether PHP,MySQL and NGINX are installed or not

LOGFILE=/var/log/wordpress-install.log

dpkg -l  mysql-server >>  $LOGFILE #Checking Mysql Server if not install#
if [ $? -ne 0 ]; then
	apt-get install -y mysql-server > $LOGFILE
	else	
		echo "MySql Server is alreay installed skipping Installation"
fi

dpkg -l  nginx >> $LOGFILE # Install NGINX Server if not install
if [ $? -ne 0 ]; then
	apt-get install -y nginx  >> $LOGFILE
	else
		echo "Nginx server is already install skipping Installation"
fi

dpkg -l php5 >> $LOGFILE #Install PHP5 if not install it.
if [ $? -ne 0 ]; then
	apt-get install -y php5  >> $LOGFILE
	else	
		echo "php is already installed Skipping installation"
fi




