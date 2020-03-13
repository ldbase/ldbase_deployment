echo "drupal-core-config.sh started." >> /root/build-process.txt

# Record build parameters
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal-build-params.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal-install.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal-install.txt
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal-install.txt
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal-install.txt
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal-install.txt


# Install Drupal
cd /var/www/html/drupal
drupal site:install standard \
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
        >> /root/drupal-install.txt 2>&1

echo "drupal-core-config.sh completed." >> /root/build-process.txt
