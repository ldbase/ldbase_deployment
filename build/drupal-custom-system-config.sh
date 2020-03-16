echo "drupal-custom-system-config.sh started." >> /root/build-process.txt

# Import LDbase configuration data
echo "LDbase configuration inload started." >> /root/build-process.txt
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y >> /root/drupal-load-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();' >> /root/drupal-load-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/libraries/ldbase_config/sync >> /root/drupal-load-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal ldbase:importTerms >> /root/drupal-load-config.txt 2>&1
echo "LDbase configuration inload completed." >> /root/build-process.txt

# Prepare for lift off 
echo "HTTPD and MySQL restarting." >> /root/build-process.txt
service apache2 restart
service mysql restart
echo "HTTPD and MySQL restarted." >> /root/build-process.txt

echo "Rebuilding Drupal caches." >> /root/build-process.txt
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drupal cache:rebuild
echo "Drupal caches rebuilt." >> /root/build-process.txt

echo "drupal-custom-system-config.sh completed." >> /root/build-process.txt
