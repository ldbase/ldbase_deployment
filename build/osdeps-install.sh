# Update repository caches
apt update > /root/osdeps-install.txt 2>&1
apt -y upgrade > /root/osdeps-install.txt 2>&1

# Run updates & installations
apt -y install apache2 unzip \
	php php-dev php-gd php-soap php-mysql php-mbstring php-zip php-curl \
	>> /root/osdeps-install.txt 2>&1
service apache2 restart >> /root/osdeps-install.txt 2>&1

# Install latest & greatest version of Composer
cd /root
curl -sS https://getcomposer.org/installer | php >> /root/osdeps-install.txt 2>&1
mv composer.phar /usr/local/bin/composer >> /root/osdeps-install.txt 2>&1
chmod +x /usr/local/bin/composer >> /root/osdeps-install.txt 2>&1
/usr/local/bin/composer global require zaporylie/composer-drupal-optimizations >> /root/osdeps-install.txt 2>&1

