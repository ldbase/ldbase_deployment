echo "\n\nInstalling Drupal..." >> /root/drupal.install.txt 2>&1
echo "Installing Drupal..."
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal.install.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal.install.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal.install.txt
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal.install.txt
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal.install.txt
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal.install.txt
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
        >> /root/drupal.install.txt 2>&1
echo "Done installing Drupal." >> /root/drupal.install.txt 2>&1
