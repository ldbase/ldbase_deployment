
source /etc/environment

echo -e "\n\nBeginning upgrade of ldbase system to Drupal 10.\n\n"
ssh-keyscan github.com >> ~/.ssh/known_hosts

cd /var/www/html/drupal/
echo -e "\n\nChange services and settings file permissions for upgrade.\n\n"
chmod 777 /var/www/html/drupal/web/sites/default
chmod 666 /var/www/html/drupal/web/sites/default/*settings.php
chmod 666 /var/www/html/drupal/web/sites/default/*services.yml

cd /var/www/html/drupal/
rm composer.lock

# Remove old requirements
echo -e "\n\nRemoving old requirements.\n\n"
/usr/local/bin/composer -n remove 'drupal/core' 'drupal/console' --no-update
/usr/local/bin/composer -n require 'drupal/schemadotorg:1.0.0-alpha10' --update-with-dependencies --no-update 
/usr/local/bin/composer -n require 'drush/drush:^11' --update-with-dependencies --no-update 
/usr/local/bin/composer -n require 'drupal/core-recommended:^10' 'drupal/core-composer-scaffold:^10' 'drupal/core-project-message:^10' --update-with-dependencies --no-update
/usr/local/bin/composer -n require 'drupal/core-dev:^10' --dev --update-with-dependencies --no-update

echo -e "\n\nRunning Composer Update.\n\n"
/usr/local/bin/composer -n update

# Final flush
echo -e "\n\nRun database updates.\n\n"
/var/www/html/drupal/vendor/bin/drush -y updatedb
echo -e "\n\nRefresh caches.\n\n"
/var/www/html/drupal/vendor/bin/drush -y cache:rebuild 


echo -e "\n\nReset services and settings file permissions.\n\n"
chmod 755 /var/www/html/drupal/web/sites/default
chmod 644 /var/www/html/drupal/web/sites/default/*settings.php
chmod 644 /var/www/html/drupal/web/sites/default/*services.yml
