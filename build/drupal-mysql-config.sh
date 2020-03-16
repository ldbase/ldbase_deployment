echo "drupal-mysql-config.sh started." >> /root/build-process.txt

# Record build parameters
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal-mysql-config.txt
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/drupal-mysql-config.txt
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/drupal-mysql-config.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal-mysql-config.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal-mysql-config.txt


# Configure MySQL for Drupal connection
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE ldbasedb;" \
	>> /root/drupal-mysql-config.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" \
	>> /root/drupal-mysql-config.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" \
	>> /root/drupal-mysql-config.txt 2>&1
mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/drupal-mysql-config.txt 2>&1
service mysql restart >> /root/drupal-mysql-config.txt 2>&1

echo "drupal-mysql-config.sh completed." >> /root/build-process.txt
