# Record build parameters
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal-build-params.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal-install.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal-install.txt
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal-install.txt
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal-install.txt
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal-install.txt


# Set up Drupal codebase
cd /var/www/html/
rm index.html
composer create-project drupal-composer/drupal-project:8.x-dev drupal \
	--stability dev --no-interaction \
        >> /root/drupal-install.txt 2>&1


# Install Drupal
cd /var/www/html/drupal
drupal site:install standard \
	--langcode="en" \
	--db-type="mysql" \
	--db-host="${DATABASE_ENDPOINT}" \
	--db-name="ldbasedb" \
	--db-user="${DRUPAL_DATABASE_USER}" \
	--db-pass="${DRUPAL_DATABASE_PASS}" \
	--db-port="3306" \
	--site-mail="${DRUPAL_ADMIN_EMAIL}" \
	--account-name="${DRUPAL_ADMIN_USER}" \
	--account-pass="${DRUPAL_ADMIN_PASS}" \
	--account-mail="${DRUPAL_ADMIN_EMAIL}" \
	--no-interaction \
        >> /root/drupal-install.txt 2>&1


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
	echo '"^dev\.ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
fi
echo '];' \
	>> /var/www/html/drupal/web/sites/default/settings.php


# Install LDbase dependencies from customized composer.json
mkdir /root/.composer
cd /root/.composer/
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json
cd /var/www/html/drupal
rm composer.*
wget https://raw.githubusercontent.com/ldbase/ldbase_deployment/master/assets/composer.json
composer install >> /root/composer-reinstall.txt 2>&1


# Download JavaScript libraries
cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs
mkdir d3; cd d3; wget https://d3js.org/d3.v3.min.js; mv d3.v3.min.js d3.min.js >> /dev/null 2>&1
cd /var/www/html/drupal/web
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-1.x/libraries.zip
unzip libraries.zip
rm libraries.zip
