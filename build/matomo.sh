echo "Configuring MySQL server for Matomo..." | tee /root/matomo.log 2>&1
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/matomo.log
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/matomo.log
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/matomo.log

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE matomodb;" \
	>> /root/matomo.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER 'matomo'@'%' IDENTIFIED BY 'matomo';" \
	>> /root/matomo.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON matomodb.* TO 'matomo'@'%';" \
	>> /root/matomo.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/matomo.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	matomodb < /vagrant/assets/matomo.sql \
	>> /root/matomo.log 2>&1

service mysql restart >> /root/matomo.log 2>&1
echo "Done configuring MySQL server for Matomo." >> /root/matomo.log 2>&1


echo "\n\nInstalling Matomo..." >> /root/matomo.log 2>&1
echo "Installing Matomo..."
cd /root >/dev/null 2>&1
wget https://builds.matomo.org/matomo.zip >/dev/null 2>&1
unzip matomo.zip >/dev/null 2>&1
mv matomo /var/www/html/matomo >/dev/null 2>&1
rm /root/'How to install Matomo.html' >/dev/null 2>&1
rm /root/matomo.zip >/dev/null 2>&1
cp /vagrant/assets/matomo.config.ini.php /var/www/html/matomo/config/config.ini.php >/dev/null 2>&1
cd /var/www/html >/dev/null 2>&1
chown -R www-data:www-data matomo/ >/dev/null 2>&1
chmod -R 775 matomo/ >/dev/null 2>&1

cp /vagrant/assets/matomo.conf /etc/apache2/conf-available/matomo.conf >/dev/null 2>&1
cp /vagrant/assets/matomo.conf /etc/apache2/sites-available/matomo.conf >/dev/null 2>&1
cp /vagrant/assets/matomo.conf /etc/apache2/sites-enabled/matomo.conf >/dev/null 2>&1
service apache2 restart >> /root/matomo.log 2>&1

echo "Done installing Matomo." | tee /root/matomo.log 2>&1
