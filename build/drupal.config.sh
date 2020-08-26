echo "\n\nLoading LDbase configurations..." >> /root/drupal.config.txt 2>&1
echo "Loading LDbase configurations..."
cd /var/www/html/drupal/ >/dev/null 2>&1
/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y >> /root/drupal.config.txt 2>&1
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();' >> /root/drupal.config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/libraries/ldbase_config/sync >> /root/drupal.config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal ldbase:importTerms >> /root/drupal.config.txt 2>&1

service apache2 restart >> /root/drupal.config.txt 2>&1
service mysql restart >> /root/drupal.config.txt 2>&1
cd /var/www/html/drupal/ >/dev/null 2>&1
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild >> /root/drupal.config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal cache:rebuild >> /root/drupal.config.txt 2>&1
echo "Done loading LDbase configurations." >> /root/drupal.config.txt 2>&1
