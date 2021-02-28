source /etc/environment

case $EC2_HOSTNAME in
  ldbase_vagrant)
    USE_CUSTOM_HOST=1
    ;;

  ldbase_test)
    USE_CUSTOM_HOST=0
    ;;

  ldbase_prod)
    USE_CUSTOM_HOST=0
    ;;

cd /ldbase_deployment; git pull
cd /var/www/html/drupal
rm composer.*
cp /ldbase_deployment/assets/composer.json .
composer update --no-interaction

cd /var/www/html/drupal/

/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/libraries/ldbase_config/sync

/var/www/html/drupal/vendor/bin/drush config:set "matomo.settings" url_http "http://${MATOMO_DNS_NAME}/" -y
/var/www/html/drupal/vendor/bin/drush config:set "ldbase_admin.settings" ldbase_matomo_user_token "${MATOMO_TOKEN}" -y
/var/www/html/drupal/vendor/bin/drush config:set "smtp.settings" smtp_username "${SMTP_USERNAME}" -y
/var/www/html/drupal/vendor/bin/drush config:set "smtp.settings" smtp_password "${SMTP_PASSWORD}" -y
/var/www/html/drupal/vendor/bin/drush config:set "s3fs.settings" use_customhost "${USE_CUSTOM_HOST}" -y

/var/www/html/drupal/vendor/bin/drush updatedb
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drupal cache:rebuild
/var/www/html/drupal/vendor/bin/drush -vvv search-api:index
