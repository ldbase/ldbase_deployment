# Save build parameters
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/matomo-install.txt
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/matomo-install.txt
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/matomo-install.txt


# Configure MySQL
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE matomodb;" \
	>> /root/matomo-install.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER 'matomo'@'%' IDENTIFIED BY 'matomo';" \
	>> /root/matomo-install.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON matomodb.* TO 'matomo'@'%';" \
	>> /root/matomo-install.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/matomo-install.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	matomodb < /vagrant/assets/matomo.sql \
	>> /root/matomo-install.txt 2>&1


# Install Matomo
cd /root
wget https://builds.matomo.org/matomo.zip >> /dev/null
unzip matomo.zip >> /dev/null
mv matomo /var/www/html/matomo
cp /vagrant/assets/matomo.config.ini.php /var/www/html/matomo/config/config.ini.php
git clone https://github.com/fsulib/IslandoraReports /var/www/html/matomo/plugins/IslandoraReports
cd /var/www/html
chown -R www-data:www-data matomo/
chmod -R 775 matomo/


# Add Matomo to Apache docroot
cp /vagrant/assets/matomo.conf /etc/apache2/conf-available/matomo.conf
cp /vagrant/assets/matomo.conf /etc/apache2/sites-available/matomo.conf
cp /vagrant/assets/matomo.conf /etc/apache2/sites-enabled/matomo.conf
service apache2 restart
