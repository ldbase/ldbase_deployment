echo "Configuring MySQL server for Drupal..." >> /root/drupal.txt 2>&1
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal.txt
echo "DatabaseRootUser: ${DATABASE_ROOT_USER}" >> /root/drupal.txt
echo "DatabaseRootPass: ${DATABASE_ROOT_PASS}" >> /root/drupal.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal.txt

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE DATABASE ldbasedb;" \
	>> /root/drupal.txt 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="CREATE USER '${DRUPAL_DATABASE_USER}'@'%' IDENTIFIED BY '${DRUPAL_DATABASE_PASS}';" \
	>> /root/drupal.txt 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="GRANT ALL PRIVILEGES ON ldbasedb.* TO '${DRUPAL_DATABASE_USER}'@'%';" \
	>> /root/drupal.txt 2>&1

mysql --user="${DATABASE_ROOT_USER}" \
	--password="${DATABASE_ROOT_PASS}" \
	--host="${DATABASE_ENDPOINT}" \
	--execute="FLUSH PRIVILEGES;" \
	>> /root/drupal.txt 2>&1
service mysql restart >> /root/drupal.txt 2>&1
echo "Done configuring MySQL server for drupal." >> /root/drupal.txt 2>&1


echo "\n\nConfiguring Apache server for Drupal..." >> /root/drupal.txt 2>&1
echo "AddHandler php5-script .php" >> /etc/apache2/apache2.conf
echo "AddType text/html .php" >> /etc/apache2/apache2.conf
sed -i -e 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/apache2.conf
sed -i -e 's/\/var\/www\/html/\/var\/www\/html\/drupal\/web/g' /etc/apache2/sites-available/000-default.conf
rm /etc/php/7.2/apache2/php.ini
cp /ldbase_deployment/assets/apache.php.ini /etc/php/7.2/apache2/php.ini
service apache2 restart >> /root/drupal.txt 2>&1
echo "Done configuring Apache server for Drupal..." >> /root/drupal.txt 2>&1
echo "drupal-core-download.sh started." >> /root/build-process.txt


echo "\n\nInstalling Composer..." >> /root/drupal.txt 2>&1
cd /root; curl -sS https://getcomposer.org/installer | php >> /root/drupal.txt 2>&1
mv composer.phar /usr/local/bin/composer >> /root/drupal.txt 2>&1
chmod +x /usr/local/bin/composer >> /root/drupal.txt 2>&1
/usr/local/bin/composer global require zaporylie/composer-drupal-optimizations >> /root/drupal.txt 2>&1
mkdir /root/.composer
cd /root/.composer/
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json
cd /; git clone https://github.com/ldbase/ldbase_deployment
echo "Done installing Composer." >> /root/drupal.txt 2>&1


echo "\n\nDownloading & installing Drupal..." >> /root/drupal.txt 2>&1
echo "DatabaseEndpoint: ${DATABASE_ENDPOINT}" >> /root/drupal-install.txt
echo "DrupalDatabaseUser: ${DRUPAL_DATABASE_USER}" >> /root/drupal-install.txt
echo "DrupalDatabasePass: ${DRUPAL_DATABASE_PASS}" >> /root/drupal-install.txt
echo "DrupalAdminUser: ${DRUPAL_ADMIN_USER}" >> /root/drupal-install.txt
echo "DrupalAdminPass: ${DRUPAL_ADMIN_PASS}" >> /root/drupal-install.txt
echo "DrupalAdminEmail: ${DRUPAL_ADMIN_EMAIL}" >> /root/drupal-install.txt
cd /var/www/html
rm index.html
composer create-project drupal-composer/drupal-project:8.x-dev drupal \
	--stability dev --no-interaction \
        >> /root/drupal-install.txt 2>&1

cd /var/www/html/drupal
rm composer.*
cp /ldbase_deployment/assets/composer.json .
composer install >> /root/drupal.txt 2>&1
sh /ldbase_deployment/build/ldbase-custom-codebase-update.sh >> /root/drupal.txt 2>&1

cd /var/www/html/drupal 
/var/www/html/drupal/vendor/bin/drupal site:install standard \
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
echo "Done downloading & installing Drupal." >> /root/drupal.txt 2>&1


echo "\n\nCustomizing Drupal codebase..." >> /root/drupal.txt 2>&1
cd /var/www/html/drupal
mkdir -p private_files
chmod -R 777 private_files
echo '$settings["file_private_path"] = "/var/www/html/drupal/private_files";' >> /var/www/html/drupal/web/sites/default/settings.php

echo '$settings["s3fs.access_key"] = "minioadmin";' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.secret_key"] = "minioadmin";' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$config["s3fs.settings"]["bucket"] = "ldbase";' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.use_s3_for_private"] = TRUE;' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.upload_as_private"] = TRUE;' >> /var/www/html/drupal/web/sites/default/settings.php

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

cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs
mkdir d3; cd d3; wget https://d3js.org/d3.v3.min.js; mv d3.v3.min.js d3.min.js >> /dev/null 2>&1
cd /var/www/html/drupal/web/libraries; mkdir jquery-ui-slider-pips; cd jquery-ui-slider-pips; mkdir dist; cd dist;
wget https://raw.githubusercontent.com/simeydotme/jQuery-ui-Slider-Pips/v1.11.3/dist/jquery-ui-slider-pips.min.css >> /dev/null 2>&1
wget https://raw.githubusercontent.com/simeydotme/jQuery-ui-Slider-Pips/v1.11.3/dist/jquery-ui-slider-pips.min.js >> /dev/null 2>&1
cd /var/www/html/drupal/web
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-1.x/libraries.zip >> /dev/null 2>&1
unzip libraries.zip
rm libraries.zip

cd /var/www/html/drupal/vendor/seboettg/citeproc-php
/var/www/html/drupal/vendor/seboettg/citeproc-php/install.sh locales >> /root/drupal.txt 2>&1
/var/www/html/drupal/vendor/seboettg/citeproc-php/install.sh styles-distribution >> /root/drupal.txt 2>&1

if [ -d /vagrant ]; then 
  chown -R vagrant:vagrant /var/www/html/drupal/web/themes/custom/portcullis
  chown -R vagrant:vagrant /var/www/html/drupal/web/modules/custom/ldbase_new_account
fi

cd /var/www/html/drupal/web/
rm robots.txt
cp /ldbase_deployment/assets/robots.txt .
echo "Done customizing Drupal codebase." >> /root/drupal.txt 2>&1


echo "\n\nLoading LDbase configurations..." >> /root/drupal.txt 2>&1
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y >> /root/drupal.txt 2>&1
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();' >> /root/drupal.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/libraries/ldbase_config/sync >> /root/drupal.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal ldbase:importTerms >> /root/drupal.txt 2>&1

service apache2 restart
service mysql restart
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drupal cache:rebuild
echo "Done loading LDbase configurations." >> /root/drupal.txt 2>&1
