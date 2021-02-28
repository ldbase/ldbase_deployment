source /etc/environment

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="CREATE DATABASE matomodb;"

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="CREATE USER 'matomo'@'%' IDENTIFIED BY 'matomo';"

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="GRANT ALL PRIVILEGES ON matomodb.* TO 'matomo'@'%';"

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="FLUSH PRIVILEGES;"

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	matomodb < /vagrant/assets/matomo.sql

service mysql restart

cd /root
wget https://builds.matomo.org/matomo.zip > /dev/null 2>&1
unzip matomo.zip > /dev/null 2>&1
mv matomo /var/www/html/matomo
rm /root/'How to install Matomo.html'
rm /root/matomo.zip
cp /vagrant/assets/matomo.config.ini.php /var/www/html/matomo/config/config.ini.php
cd /var/www/html
chown -R www-data:www-data matomo/
chmod -R 775 matomo/

cp /vagrant/assets/matomo.conf /etc/apache2/conf-available/matomo.conf
cp /vagrant/assets/matomo.conf /etc/apache2/sites-available/matomo.conf
cp /vagrant/assets/matomo.conf /etc/apache2/sites-enabled/matomo.conf
service apache2 restart
