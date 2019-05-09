# Configure MySQL
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE matomodb;" \
	>> /root/matomo-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER 'matomo'@'%' IDENTIFIED BY 'matomo';" \
	>> /root/matomo-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON matomodb.* TO 'matomo'@'%';" \
	>> /root/matomo-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/matomo-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	matomodb < /vagrant/build_scripts/matomo.sql \
	>> /root/matomo-setup.txt 2>&1


# Install Matomo
cd /root
wget https://builds.matomo.org/matomo.zip
unzip matomo.zip
mv matomo /var/www/html/matomo
cp /vagrant/build_scripts/matomo.config.ini.php /var/www/html/matomo/config/config.ini.php
cd /var/www/html/
chown -R www-data:www-data matomo/
chmod -R 775 matomo/
cp /vagrant/build_scripts/matomo.conf /etc/apache2/conf-available/matomo.conf
cp /vagrant/build_scripts/matomo.conf /etc/apache2/sites-available/matomo.conf
cp /vagrant/build_scripts/matomo.conf /etc/apache2/sites-enabled/matomo.conf
service apache2 restart
