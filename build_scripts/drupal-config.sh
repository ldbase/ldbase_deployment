# Post-install configurations
cd /var/www/html/drupal

# Set up private file storage
mkdir -p private_files/ldbase
chmod -R 777 private_files
echo '$settings["file_private_path"] = "/var/www/html/drupal/private_files/ldbase";' \
	>> /var/www/html/drupal/web/sites/default/settings.php

# Set up trusted host patterns dynamically depending on VM status
echo '$settings["trusted_host_patterns"] = [' \
	>> /var/www/html/drupal/web/sites/default/settings.php
if [ -d /vagrant ]; then 
	echo '"^localhost$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
else
	echo '"^www\.ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
	echo '"^dev\.ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
fi
echo '];' \
	>> /var/www/html/drupal/web/sites/default/settings.php

mkdir /root/.composer
cp /vagrant/composer/auth.json /root/.composer/auth.json
cd /var/www/html/drupal
rm composer.*
cp /vagrant/composer/composer.json /var/www/html/drupal/composer.json
composer install >> /root/composer-reinstall.txt 2>&1


# Download JavaScript libraries
cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs
mkdir d3; cd d3; wget https://d3js.org/d3.v3.min.js; mv d3.v3.min.js d3.min.js >> /dev/null 2>&1
cd /var/www/html/drupal/web
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-1.x/libraries.zip
unzip libraries.zip
rm libraries.zip


# Import LDbase configuration data
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();' >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/modules/custom/ldbase_config/sync >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal ldbase:importTerms >> /root/ldbase-system-config.txt 2>&1


# Prepare for lift off 
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drupal cache:rebuild
