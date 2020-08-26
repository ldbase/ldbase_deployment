echo "Configuring MySQL server for Drupal..." >> /root/drupal.mysql.txt 2>&1
echo "Configuring MySQL server for Drupal..."
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal.mysql.txt
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/drupal.mysql.txt
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/drupal.mysql.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal.mysql.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal.mysql.txt

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE ldbasedb;" \
	>> /root/drupal.mysql.txt 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" \
	>> /root/drupal.mysql.txt 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" \
	>> /root/drupal.mysql.txt 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/drupal.mysql.txt 2>&1
service mysql restart >> /root/drupal.mysql.txt 2>&1
echo "Done configuring MySQL server for drupal." >> /root/drupal.mysql.txt 2>&1
