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


# Run updates & installations
apt -y install apache2 php php-dev php-gd php-soap php-mysql php-mbstring composer > /root/drupal-dependencies.txt 2>&1


# Configure MySQL
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="CREATE DATABASE ldbasedb;" >> /root/mysql-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" >> /root/mysql-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" >> /root/mysql-setup.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" --password="${DATABASE_ROOT_PASS}" --host="${DATABASE_ENDPOINT}" --execute="FLUSH PRIVILEGES;" >> /root/mysql-setup.txt 2>&1


# Configure Drupal


# Configure Apache 
echo "AddHandler php5-script .php" >> /etc/apache2/apache2.conf
echo "AddType text/html .php" >> /etc/apache2/apache2.conf
sed -i -e 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf
service apache2 restart


# Final refresh of system before exiting
# drush cache-rebuild
service apache2 restart
