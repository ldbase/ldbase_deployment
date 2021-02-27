echo "Installing Drupal..." | tee /root/drupal.install.log 2>&1

source /etc/environment

cd /var/www/html/drupal >/dev/null 2>&1
/var/www/html/drupal/vendor/bin/drupal site:install standard \
	--langcode="en" \
	--db-type="mysql" \
	--db-host="${RDS_DATABASE_HOST}" \
	--db-name="${RDS_DATABASE_NAME}" \
	--db-user="${RDS_DATABASE_USER}" \
	--db-pass="${RDS_DATABASE_PASSWORD}" \
	--db-port="3306" \
	--site-mail="${DRUPAL_ADMIN_EMAIL}" \
	--account-name="${DRUPAL_ADMIN_USERNAME}" \
	--account-pass="${DRUPAL_ADMIN_PASSWORD}" \
	--account-mail="${DRUPAL_ADMIN_EMAIL}" \
	--no-interaction \
        >> /root/drupal.install.log 2>&1
echo "Done installing Drupal." | tee /root/drupal.install.log 2>&1
