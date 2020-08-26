echo "Configuring MySQL server for Drupal..." | tee /root/drupal.mysql.log 2>&1
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal.mysql.log
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/drupal.mysql.log
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/drupal.mysql.log
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal.mysql.log
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal.mysql.log

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE ldbasedb;" \
	>> /root/drupal.mysql.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" \
	>> /root/drupal.mysql.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" \
	>> /root/drupal.mysql.log 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/drupal.mysql.log 2>&1
service mysql restart >> /root/drupal.mysql.log 2>&1
echo "Done configuring MySQL server for drupal." | tee /root/drupal.mysql.log 2>&1
