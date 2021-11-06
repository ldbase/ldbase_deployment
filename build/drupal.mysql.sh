source /etc/environment

mysql \
--user="root" \
--password="root" \
--host="${RDS_DATABASE_HOST}" \
--protocol="tcp" \
--execute="CREATE DATABASE ${RDS_DATABASE_NAME};"

mysql \
--user="root" \
--password="root" \
--host="${RDS_DATABASE_HOST}" \
--protocol="tcp" \
--execute="CREATE USER '${RDS_DATABASE_USER}'@'%' IDENTIFIED BY '${RDS_DATABASE_PASSWORD}';"

mysql \
--user="root" \
--password="root" \
--host="${RDS_DATABASE_HOST}" \
--protocol="tcp" \
--execute="GRANT ALL PRIVILEGES ON ${RDS_DATABASE_NAME}.* TO '${RDS_DATABASE_USER}'@'%';"

mysql \
--user="root" \
--password="root" \
--host="${RDS_DATABASE_HOST}" \
--protocol="tcp" \
--execute="FLUSH PRIVILEGES;"

docker restart mysql
