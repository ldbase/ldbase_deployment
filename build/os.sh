echo "Configuring timezone..." >> /root/os.txt 2>&1
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime
echo "Done configuring timezone." >> /root/os.txt 2>&1


echo "\n\nConfiguring swap files..." >> /root/os.txt 2>&1
fallocate -l 1G /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
swapon -a /swapfile
/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
/sbin/mkswap /var/swap.1
/sbin/swapon /var/swap.1
echo "Done configuring swap files." >> /root/os.txt 2>&1


echo "\n\nInstalling system dependencies..." >> /root/os.txt 2>&1
apt update > /root/os.txt 2>&1
apt -y upgrade > /root/os.txt 2>&1
apt -y install mysql-server apache2 unzip php7.2 php-dev php-gd php-soap php-mysql php-mbstring php-zip php-curl >> /root/os.txt 2>&1
service mysql restart >> /root/os.txt 2>&1
service apache2 restart >> /root/os.txt 2>&1
cd /; git clone https://github.com/ldbase/ldbase_deployment
echo "Done installing system dependencies." >> /root/os.txt 2>&1
