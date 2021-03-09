source /etc/environment

cd /var/www/html
rm index.html
composer create-project drupal-composer/drupal-project:8.x-dev drupal --stability dev --no-interaction > /dev/null 2>&1
cd /var/www/html/drupal
rm composer.*
cp /ldbase_deployment/assets/composer.json .
composer install > /dev/null 2>&1

cd /var/www/html/drupal
mkdir -p private_files
chmod -R 777 private_files
echo '$settings["file_private_path"] = "/var/www/html/drupal/private_files";' >> /var/www/html/drupal/web/sites/default/settings.php
echo "\$settings[\"s3fs.access_key\"] = \"${S3_ACCESS_KEY}\";" >> /var/www/html/drupal/web/sites/default/settings.php
echo "\$settings[\"s3fs.secret_key\"] = \"${S3_SECRET_KEY}\";" >> /var/www/html/drupal/web/sites/default/settings.php
echo "\$config[\"s3fs.settings\"][\"bucket\"] = \"${S3_BUCKET_NAME}\";" >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.use_s3_for_private"] = TRUE;' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.upload_as_private"] = TRUE;' >> /var/www/html/drupal/web/sites/default/settings.php

echo '$settings["trusted_host_patterns"] = [' \
	>> /var/www/html/drupal/web/sites/default/settings.php
if [ -d /vagrant ]; then
	echo '"^localhost$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
else
	echo '"^ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
	echo '"^www\.ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
	echo '"^test\.ldbase\.org$",' \
	>> /var/www/html/drupal/web/sites/default/settings.php
fi
echo '];' \
	>> /var/www/html/drupal/web/sites/default/settings.php

cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs > /dev/null 2>&1
mkdir d3
cd d3
wget https://d3js.org/d3.v3.min.js > /dev/null 2>&1
mv d3.v3.min.js d3.min.js
cd /var/www/html/drupal/web/libraries
mkdir jquery-ui-slider-pips
cd jquery-ui-slider-pips
mkdir dist
cd dist
wget https://raw.githubusercontent.com/simeydotme/jQuery-ui-Slider-Pips/v1.11.3/dist/jquery-ui-slider-pips.min.css > /dev/null 2>&1
wget https://raw.githubusercontent.com/simeydotme/jQuery-ui-Slider-Pips/v1.11.3/dist/jquery-ui-slider-pips.min.js > /dev/null 2>&1
cd /var/www/html/drupal/web 
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-5.x/libraries.zip > /dev/null 2>&1
unzip libraries.zip > /dev/null 2>&1
rm libraries.zip

cd /var/www/html/drupal/vendor/seboettg/citeproc-php
/var/www/html/drupal/vendor/seboettg/citeproc-php/install.sh locales
/var/www/html/drupal/vendor/seboettg/citeproc-php/install.sh styles-distribution

if [ -d /vagrant ]; then 
  chown -R vagrant:vagrant /var/www/html/drupal/web/themes/custom/portcullis
  chown -R vagrant:vagrant /var/www/html/drupal/web/modules/custom/ldbase_new_account
fi
