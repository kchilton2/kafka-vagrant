#!/bin/bash

# Download Java 8.
sudo wget -P /opt --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.rpm"

# Extract it and make a symbolic link for convenience.
sudo yum localinstall /opt/jdk-8u144-linux-x64.rpm -y