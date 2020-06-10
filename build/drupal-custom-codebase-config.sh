echo "drupal-custom-codebase-config.sh started." >> /root/build-process.txt

# Set up S3FS file storage with default Minio local server
echo '$settings["s3fs.access_key"] = "minioadmin";' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.secret_key"] = "minioadmin";' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$config["s3fs.settings"]["bucket"] = "ldbase";' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.use_s3_for_private"] = TRUE;' >> /var/www/html/drupal/web/sites/default/settings.php
echo '$settings["s3fs.upload_as_private"] = TRUE;' >> /var/www/html/drupal/web/sites/default/settings.php


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
cd /var/www/html/drupal
rm composer.*
cp /ldbase_deployment/assets/composer.json .
composer install >> /root/composer-reinstall.txt 2>&1
sh /ldbase_deployment/build/ldbase-custom-codebase-update.sh >> /root/composer-update.txt 2>&1
echo "Composer reinstallation completed." >> /root/build-process.txt


# Download JavaScript libraries
echo "Javascript libraries download started." >> /root/build-process.txt
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
echo "Javascript libraries download completed." >> /root/build-process.txt

# Make Portcullis owned by Vagrant so NetBeans doesn't yell at Favenzio
if [ -d /vagrant ]; then 
  chown -R vagrant:vagrant /var/www/html/drupal/web/themes/custom/portcullis
  chown -R vagrant:vagrant /var/www/html/drupal/web/modules/custom/ldbase_new_account
fi

# Set up blocking robots.txt file so the test site doesn't get crawled
cd /var/www/html/drupal/web/
rm robots.txt
cp /ldbase_deployment/assets/robots.txt .

echo "drupal-custom-codebase-config.sh completed." >> /root/build-process.txt
