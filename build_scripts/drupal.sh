# Save build parameters
echo "Build Parameters:" >> /root/drupal-build-params.txt
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal-build-params.txt
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/drupal-build-params.txt
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/drupal-build-params.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal-build-params.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal-build-params.txt
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal-build-params.txt
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal-build-params.txt
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal-build-params.txt

# Set timezone
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/US/Eastern /etc/localtime


# Run updates & installations
yum -y update > /root/drupal-updates.txt
yum -y install httpd mysql php php-devel php-gd php-xml php-soap php-mysql php-mbstring > /root/drupal-installs.txt


# Configure MySQL
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="CREATE DATABASE ldbasedb;" >> /root/mysql.log 2>&1
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" >> /root/mysql.log 2>&1
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" >> /root/mysql.log 2>&1
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="FLUSH PRIVILEGES;" >> /root/mysql.log 2>&1


# Configure Drupal
mkdir /root/.composer
export COMPOSER_HOME=/root/.composer
curl -sS https://getcomposer.org/installer -o /root/composer-installer.php 
php /root/composer-installer.php --install-dir=/root/.composer
php /root/.composer/composer.phar global require drush/drush:8.x-dev
rm -rf /var/www/html
#/root/.composer/vendor/bin/drush dl drupal-8 --destination=/var/www/ --drupal-project-rename=html
#cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
#/root/.composer/vendor/bin/drush --root=/var/www/html --uri=default -y si standard --account-name=$DRUPAL_ADMIN_USER --account-pass=$DRUPAL_ADMIN_PASS --account-mail=$DRUPAL_ADMIN_EMAIL --db-url=mysql://$DRUPAL_DATABASE_USER:$DRUPAL_DATABASE_PASS@$DATABASE_ENDPOINT/ldbasedb --site-name="LDbase"
#chmod -R 755 /var/www/html


# Configure HTTPD 
echo "AddHandler php5-script .php" >> /etc/httpd/conf/httpd.conf
echo "AddType text/html .php" >> /etc/httpd/conf/httpd.conf
sed -i -e 's/AllowOverride\ None/AllowOverride\ All/g' /etc/httpd/conf/httpd.conf
service httpd restart


# Final refresh of system before exiting
#/root/.composer/vendor/bin/drush --user=1 --root=/var/www/html --uri=default -y cache-rebuild
service httpd restart
