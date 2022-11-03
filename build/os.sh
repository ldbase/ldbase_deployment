rm -f /etc/localtime
ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime


fallocate -l 1G /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
/sbin/swapon -a /swapfile
/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
/sbin/mkswap /var/swap.1
/sbin/swapon /var/swap.1

apt update > /dev/null 2>&1
apt -y upgrade > /dev/null 2>&1
apt install software-properties-common -y
add-apt-repository ppa:ondrej/php -y
apt -y install docker.io mysql-client apache2 unzip php8.1 php8.1-dev php8.1-gd php8.1-soap php8.1-mysql php8.1-mbstring php8.1-zip php8.1-curl php8.1-intl php8.1-xml > /dev/null 2>&1
service apache2 restart

docker run -d -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=root mysql:5.7
sleep 30
