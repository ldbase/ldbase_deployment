source /etc/environment

ssh-keyscan github.com >> ~/.ssh/known_hosts
cd /ldbase_deployment; git pull
cd /var/www/html/drupal
rm composer.*
cp /ldbase_deployment/assets/composer.* .
composer install --no-interaction

cd /var/www/html/drupal/web/libraries/ldbase_config/
mkdir ext
cp sync/core.extension.yml ext/

cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drush config:import --source="/var/www/html/drupal/web/libraries/ldbase_config/ext" -y --partial
/var/www/html/drupal/vendor/bin/drush config:import --source="/var/www/html/drupal/web/libraries/ldbase_config/sync" -y

/var/www/html/drupal/vendor/bin/drush config:set "matomo.settings" url_http "http://${MATOMO_DNS_NAME}/" -y
/var/www/html/drupal/vendor/bin/drush config:set "matomo.settings" url_https "https://${MATOMO_DNS_NAME}/" -y
/var/www/html/drupal/vendor/bin/drush config:set "ldbase_admin.settings" ldbase_matomo_user_token "${MATOMO_TOKEN}" -y
/var/www/html/drupal/vendor/bin/drush config:set "smtp.settings" smtp_username "${LDBASE_SMTP_AUTH_USERNAME}" -y
/var/www/html/drupal/vendor/bin/drush config:set "smtp.settings" smtp_password "${LDBASE_SMTP_AUTH_PASSWORD}" -y
/var/www/html/drupal/vendor/bin/drush config:set "doi_crossref.settings" doi_crossref_api_endpoint "${CROSSREF_ENDPOINT}" -y
/var/www/html/drupal/vendor/bin/drush config:set "doi_crossref.settings" doi_crossref_username "${CROSSREF_USERNAME}" -y
/var/www/html/drupal/vendor/bin/drush config:set "doi_crossref.settings" doi_crossref_password "${CROSSREF_PASSWORD}" -y
if [ "$VAGRANT" = true ]
then 
  /var/www/html/drupal/vendor/bin/drush config:set "s3fs.settings" use_customhost 1 -y
  /var/www/html/drupal/vendor/bin/drush config:set "s3fs.settings" hostname '127.0.0.1:9000' -y
fi

if [[ "$ENVIRONMENT" != 'prod' ]]
then
  rm /var/www/html/drupal/web/robots.txt
  cp /ldbase_deployment/assets/block.robots.txt /var/www/html/drupal/web/robots.txt
fi

/var/www/html/drupal/vendor/bin/drush updatedb -y
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drush cache:rebuild
/var/www/html/drupal/vendor/bin/drush -vvv search-api:index
