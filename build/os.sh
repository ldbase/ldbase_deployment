echo "Configuring timezone..." | tee /root/os.txt 2>&1
rm -f /etc/localtime >/dev/null 2>&1
ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime >/dev/null 2>&1
echo "Done configuring timezone." | tee /root/os.txt 2>&1


echo "\n\nConfiguring swap files..." | tee /root/os.txt 2>&1
echo "Configuring swap files..."
fallocate -l 1G /swapfile >/dev/null 2>&1
chmod 600 /swapfile >/dev/null 2>&1
mkswap /swapfile >/dev/null 2>&1
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab 2>&1
/sbin/swapon -a /swapfile >/dev/null 2>&1
/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024 >/dev/null 2>&1
/sbin/mkswap /var/swap.1 >/dev/null 2>&1
/sbin/swapon /var/swap.1 >/dev/null 2>&1
echo "Done configuring swap files." | tee /root/os.txt 2>&1


echo "\n\nInstalling system dependencies..." | tee /root/os.txt 2>&1
apt update > /root/os.txt 2>&1
apt -y upgrade > /root/os.txt 2>&1
apt -y install mysql-server apache2 unzip php7.2 php-dev php-gd php-soap php-mysql php-mbstring php-zip php-curl >> /root/os.txt 2>&1
service mysql restart >> /root/os.txt 2>&1
service apache2 restart >> /root/os.txt 2>&1
cd /; git clone https://github.com/ldbase/ldbase_deployment >/dev/null 2>&1
echo "Done installing system dependencies." | tee /root/os.txt 2>&1
