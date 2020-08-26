echo "Installing Drupal..." | tee /root/drupal.install.log 2>&1
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal.install.log
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal.install.log
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal.install.log
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal.install.log
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal.install.log
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal.install.log
cd /var/www/html/drupal >/dev/null 2>&1
/var/www/html/drupal/vendor/bin/drupal site:install standard \
	--langcode="en" \
	--db-type="mysql" \
	--db-host="${DATABASE_ENDPOINT}" \
	--db-name="ldbasedb" \
	--db-user="${DRUPAL_DATABASE_USER}" \
	--db-pass="${DRUPAL_DATABASE_PASS}" \
	--db-port="3306" \
	--site-mail="${DRUPAL_ADMIN_EMAIL}" \
	--account-name="${DRUPAL_ADMIN_USER}" \
	--account-pass="${DRUPAL_ADMIN_PASS}" \
	--account-mail="${DRUPAL_ADMIN_EMAIL}" \
	--no-interaction \
        >> /root/drupal.install.log 2>&1
echo "Done installing Drupal." | tee /root/drupal.install.log 2>&1
