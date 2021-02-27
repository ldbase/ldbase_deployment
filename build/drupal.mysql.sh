source /etc/environment

echo "Configuring MySQL server for Drupal..." | tee /root/drupal.mysql.log 2>&1

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="CREATE DATABASE ${RDS_DATABASE_NAME};" \
	>> /root/drupal.mysql.log 2>&1

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="CREATE USER '${RDS_DATABASE_USER}'@'%' IDENTIFIED BY '${RDS_DATABASE_PASSWORD}';" \
	>> /root/drupal.mysql.log 2>&1

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${RDS_DATABASE_USER}'@'%';" \
	>> /root/drupal.mysql.log 2>&1

mysql --user="root" \
	--password="root" \
	--host="${RDS_DATABASE_HOST}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/drupal.mysql.log 2>&1

service mysql restart >> /root/drupal.mysql.log 2>&1
echo "Done configuring MySQL server for drupal." | tee /root/drupal.mysql.log 2>&1
