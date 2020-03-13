# Install MySQL Server and turn it on
apt -y install mysql-server >> /root/mysql-install.txt 2>&1
service mysql restart >> /root/mysql-install.txt 2>&1
