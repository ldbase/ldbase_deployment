source /etc/environment

cd /var/www/html/drupal
/var/www/html/drupal/vendor/bin/drupal site:install standard \
	--langcode="en" \
	--db-type="mysql" \
	--db-host="127.0.0.1" \
	--db-name="${RDS_DATABASE_NAME}" \
	--db-user="${RDS_DATABASE_USER}" \
	--db-pass="${RDS_DATABASE_PASSWORD}" \
	--db-port="3306" \
	--site-mail="${DRUPAL_ADMIN_EMAIL}" \
	--account-name="${DRUPAL_ADMIN_USERNAME}" \
	--account-pass="${DRUPAL_ADMIN_PASSWORD}" \
	--account-mail="${DRUPAL_ADMIN_EMAIL}" \
	--no-interaction
