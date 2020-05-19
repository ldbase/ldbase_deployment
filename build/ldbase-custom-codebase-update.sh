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
