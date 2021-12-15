source /etc/environment

cd /var/www/html/drupal  

 /var/www/html/drupal/vendor/drush/drush/drush site:install standard \
  --locale="en" \
  --db-url="mysql://${RDS_DATABASE_USER}:${RDS_DATABASE_PASSWORD}@127.0.0.1:3306/${RDS_DATABASE_NAME}" \
  --site-mail="${DRUPAL_ADMIN_EMAIL}" \
  --account-name="${DRUPAL_ADMIN_USERNAME}" \
  --account-pass="${DRUPAL_ADMIN_PASSWORD}" \
  --account-mail="${DRUPAL_ADMIN_EMAIL}"

