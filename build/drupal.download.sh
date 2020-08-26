echo "\n\nDownloading Drupal..." >> /root/drupal.download.txt 2>&1
echo "Downloading Drupal..."
cd /var/www/html >/dev/null
rm index.html >/dev/null
composer create-project drupal-composer/drupal-project:8.x-dev drupal \
	--stability dev --no-interaction \
        >> /root/drupal.download.txt 2>&1
cd /var/www/html/drupal >/dev/null 2>&1
rm composer.* >/dev/null 2>&1
cp /ldbase_deployment/assets/composer.json . >/dev/null 2>&1
composer install >> /root/drupal.download.txt 2>&1
echo "Done downloading Drupal." >> /root/drupal.download.txt 2>&1


echo "\n\nCustomizing Drupal codebase..." >> /root/drupal.download.txt 2>&1
echo "Customizing Drupal codebase..."
cd /var/www/html/drupal >/dev/null 2>&1
mkdir -p private_files >/dev/null 2>&1
chmod -R 777 private_files >/dev/null 2>&1
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

cd /var/www/html/drupal/web/libraries >/dev/null 2>&1
git clone https://github.com/components/highlightjs >/dev/null 2>&1
mkdir d3 >/dev/null 2>&1
cd d3 >/dev/null 2>&1
wget https://d3js.org/d3.v3.min.js >/dev/null 2>&1
mv d3.v3.min.js d3.min.js >/dev/null 2>&1
cd /var/www/html/drupal/web/libraries >/dev/null 2>&1
mkdir jquery-ui-slider-pips >/dev/null 2>&1
cd jquery-ui-slider-pips >/dev/null 2>&1
mkdir dist >/dev/null 2>&1
cd dist >/dev/null 2>&1
wget https://raw.githubusercontent.com/simeydotme/jQuery-ui-Slider-Pips/v1.11.3/dist/jquery-ui-slider-pips.min.css >/dev/null 2>&1
wget https://raw.githubusercontent.com/simeydotme/jQuery-ui-Slider-Pips/v1.11.3/dist/jquery-ui-slider-pips.min.js >/dev/null 2>&1
cd /var/www/html/drupal/web >/dev/null 2>&1
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-1.x/libraries.zip >/dev/null 2>&1
unzip libraries.zip >/dev/null 2>&1
rm libraries.zip >/dev/null 2>&1

cd /var/www/html/drupal/vendor/seboettg/citeproc-php >/dev/null 2>&1
/var/www/html/drupal/vendor/seboettg/citeproc-php/install.sh locales >> /root/drupal.download.txt 2>&1
/var/www/html/drupal/vendor/seboettg/citeproc-php/install.sh styles-distribution >> /root/drupal.download.txt 2>&1

if [ -d /vagrant ]; then 
  chown -R vagrant:vagrant /var/www/html/drupal/web/themes/custom/portcullis >/dev/null 2>&1
  chown -R vagrant:vagrant /var/www/html/drupal/web/modules/custom/ldbase_new_account >/dev/null 2>&1
fi

cd /var/www/html/drupal/web/ >/dev/null 2>&1
rm robots.txt >/dev/null 2>&1
cp /ldbase_deployment/assets/robots.txt . >/dev/null 2>&1
echo "Done customizing Drupal codebase." >> /root/drupal.download.txt 2>&1
