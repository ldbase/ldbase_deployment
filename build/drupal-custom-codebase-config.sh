echo "drupal-custom-codebase-config.sh started." >> /root/build-process.txt

# Set up private file storage
cd /var/www/html/drupal
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
	echo '"^test\.ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
fi
echo '];' \
	>> /var/www/html/drupal/web/sites/default/settings.php


# Install LDbase dependencies from customized composer.json
echo "Composer reinstallation started." >> /root/build-process.txt
mkdir /root/.composer
cd /root/.composer/
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json
cd /var/www/html/drupal
rm composer.*
wget https://raw.githubusercontent.com/ldbase/ldbase_deployment/master/assets/composer.json
composer install >> /root/composer-reinstall.txt 2>&1
echo "Composer reinstallation completed." >> /root/build-process.txt


# Download JavaScript libraries
echo "Javascript libraries download started." >> /root/build-process.txt
cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs
mkdir d3; cd d3; wget https://d3js.org/d3.v3.min.js; mv d3.v3.min.js d3.min.js >> /dev/null 2>&1
cd /var/www/html/drupal/web
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-1.x/libraries.zip
unzip libraries.zip
rm libraries.zip
echo "Javascript libraries download completed." >> /root/build-process.txt

echo "drupal-custom-codebase-config.sh started." >> /root/build-process.txt
