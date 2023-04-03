cd /var/www/html/drupal/

/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityTypeManager()->getStorage("shortcut_set")->load("default")->delete();'

/var/www/html/drupal/vendor/bin/drush config:import --source="/var/www/html/drupal/web/libraries/ldbase_config/sync" -y
#if [ "$VAGRANT" = true ]
#then 
#  /var/www/html/drupal/vendor/bin/drush config:set "s3fs.settings" use_customhost 1 -y
#  /var/www/html/drupal/vendor/bin/drush config:set "s3fs.settings" hostname '127.0.0.1:9000' -y
#fi

/var/www/html/drupal/vendor/bin/drupal ldbase:importTerms
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drush cr

# Make request to host to bootstrap instance and purge error display
wget -O - localhost > /dev/null
