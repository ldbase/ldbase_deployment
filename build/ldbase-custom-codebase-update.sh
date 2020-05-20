# Update custom modules related to LDbase
cd /ldbase_deployment; git pull

cd /var/www/html/drupal
composer update \
  fsulib/portcullis \
  ldbase/ldbase_content \
  ldbase/ldbase_handlers \
  ldbase/ldbase_config \
  --no-interaction

/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/libraries/ldbase_config/sync
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drupal cache:rebuild
