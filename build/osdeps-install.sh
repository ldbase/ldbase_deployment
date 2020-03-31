echo "osdeps-install.sh started." >> /root/build-process.txt

# Update repository caches
echo "apt update started." >> /root/build-process.txt
apt update > /root/osdeps-install.txt 2>&1
echo "apt update completed." >> /root/build-process.txt

echo "apt upgrade started." >> /root/build-process.txt
apt -y upgrade > /root/osdeps-install.txt 2>&1
echo "apt upgrade completed." >> /root/build-process.txt

# Run updates & installations
echo "apt installations started." >> /root/build-process.txt
apt -y install apache2 unzip \
	php7.2 php-dev php-gd php-soap php-mysql php-mbstring php-zip php-curl \
	>> /root/osdeps-install.txt 2>&1
service apache2 restart >> /root/osdeps-install.txt 2>&1
echo "apt installations completed." >> /root/build-process.txt

# Install latest & greatest version of Composer
echo "composer installation started." >> /root/build-process.txt
cd /root; curl -sS https://getcomposer.org/installer | php >> /root/osdeps-install.txt 2>&1
mv composer.phar /usr/local/bin/composer >> /root/osdeps-install.txt 2>&1
chmod +x /usr/local/bin/composer >> /root/osdeps-install.txt 2>&1
/usr/local/bin/composer global require zaporylie/composer-drupal-optimizations >> /root/osdeps-install.txt 2>&1
echo "composer installation completed." >> /root/build-process.txt

echo "Cloning ldbase_deployment to /." >> /root/build-process.txt
mkdir /root/.composer
cd /root/.composer/
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json
cd /; git clone https://github.com/ldbase/ldbase_deployment
echo "ldbase_deployment cloned to /." >> /root/build-process.txt

echo "osdeps-install.sh completed." >> /root/build-process.txt
