echo "Configuring timezone..." >> /root/os.txt 2>&1
echo "Configuring timezone..."
rm -f /etc/localtime >/dev/null
ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime >/dev/null
echo "Done configuring timezone." >> /root/os.txt 2>&1


echo "\n\nConfiguring swap files..." >> /root/os.txt 2>&1
echo "Configuring swap files..."
fallocate -l 1G /swapfile >/dev/null
chmod 600 /swapfile >/dev/null
mkswap /swapfile >/dev/null
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
swapon -a /swapfile >/dev/null
/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024 >/dev/null
/sbin/mkswap /var/swap.1 >/dev/null
/sbin/swapon /var/swap.1 >/dev/null
echo "Done configuring swap files." >> /root/os.txt 2>&1


echo "\n\nInstalling system dependencies..." >> /root/os.txt 2>&1
echo "Installing system dependencies..."
apt update > /root/os.txt 2>&1
apt -y upgrade > /root/os.txt 2>&1
apt -y install mysql-server apache2 unzip php7.2 php-dev php-gd php-soap php-mysql php-mbstring php-zip php-curl >> /root/os.txt 2>&1
service mysql restart >> /root/os.txt 2>&1
service apache2 restart >> /root/os.txt 2>&1
cd /; git clone https://github.com/ldbase/ldbase_deployment >/dev/null
echo "Done installing system dependencies." >> /root/os.txt 2>&1
