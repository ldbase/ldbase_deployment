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

# Pre-install missing dependencies
if [ -d /vagrant ]; then service mysql stop; fi
cd /var/www/html/drupal
composer require drupal/devel >> /root/composer-preinstalls.txt 2>&1
composer require drupal/devel_php >> /root/composer-preinstalls.txt 2>&1
composer require drupal/webform >> /root/composer-preinstalls.txt 2>&1
composer require drupal/webform_views >> /root/composer-preinstalls.txt 2>&1
composer require drupal/honeypot >> /root/composer-preinstalls.txt 2>&1
composer require drupal/backup_migrate >> /root/composer-preinstalls.txt 2>&1
composer require drupal/simple_sitemap >> /root/composer-preinstalls.txt 2>&1
composer require drupal/metatag >> /root/composer-preinstalls.txt 2>&1
composer require drupal/search_api >> /root/composer-preinstalls.txt 2>&1
composer require drupal/search_api_autocomplete >> /root/composer-preinstalls.txt 2>&1
composer require drupal/facets >> /root/composer-preinstalls.txt 2>&1
composer require drupal/field_group >> /root/composer-preinstalls.txt 2>&1
composer require drupal/crop >> /root/composer-preinstalls.txt 2>&1
composer require drupal/image_widget_crop >> /root/composer-preinstalls.txt 2>&1
composer require drupal/better_exposed_filters >> /root/composer-preinstalls.txt 2>&1
composer require drupal/fontawesome >> /root/composer-preinstalls.txt 2>&1
composer require drupal/fontyourface >> /root/composer-preinstalls.txt 2>&1
composer require drupal/juicerio >> /root/composer-preinstalls.txt 2>&1
composer require drupal/superfish >> /root/composer-preinstalls.txt 2>&1
composer require drupal/token >> /root/composer-preinstalls.txt 2>&1
composer require drupal/tvi >> /root/composer-preinstalls.txt 2>&1
composer require drupal/video_embed_field >> /root/composer-preinstalls.txt 2>&1
composer require drupal/views_infinite_scroll >> /root/composer-preinstalls.txt 2>&1
composer require drupal/inline_entity_form >> /root/composer-preinstalls.txt 2>&1
composer require drupal/paragraphs >> /root/composer-preinstalls.txt 2>&1
composer require drupal/entity_reference_revisions >> /root/composer-preinstalls.txt 2>&1
composer require drupal/entity_usage >> /root/composer-preinstalls.txt 2>&1
composer require drupal/rules >> /root/composer-preinstalls.txt 2>&1
composer require drupal/matomo >> /root/composer-preinstalls.txt 2>&1
composer require drupal/address >> /root/composer-preinstalls.txt 2>&1
composer require drupal/pathauto >> /root/composer-preinstalls.txt 2>&1
composer require drupal/tokenuuid >> /root/composer-preinstalls.txt 2>&1
composer require drupal/collapsiblock >> /root/composer-preinstalls.txt 2>&1
composer require drupal/assetinjector >> /root/composer-preinstalls.txt 2>&1
composer require drupal/range >> /root/composer-preinstalls.txt 2>&1
composer require drupal/context >> /root/composer-preinstalls.txt 2>&1
composer require drupal/redirect >> /root/composer-preinstalls.txt 2>&1
composer require drupal/asset_injector >> /root/composer-preinstalls.txt 2>&1
composer require drupal/menu_token >> /root/composer-preinstalls.txt 2>&1
if [ -d /vagrant ]; then service mysql start; fi


# Download JavaScript libraries
cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs
mkdir d3; cd d3; wget https://d3js.org/d3.v3.min.js; mv d3.v3.min.js d3.min.js >> /dev/null 2>&1
cd /var/www/html/drupal/web
wget https://git.drupalcode.org/sandbox/jrockowitz-2941983/raw/8.x-1.x/libraries.zip
unzip libraries.zip
rm libraries.zip


# Download LDbase custom module(s)
cd /var/www/html/drupal/web/modules/
mkdir custom
cd custom
git clone https://github.com/ldbase/ldbase_handlers
git clone https://github.com/ldbase/ldbase_content
git clone https://github.com/ldbase/ldbase_config


# Import LDbase configuration data
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();' >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal config:import --directory=/var/www/html/drupal/web/modules/custom/ldbase_config >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal ldbase:importTerms >> /root/ldbase-system-config.txt 2>&1


# Prepare for lift off 
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drupal cache:rebuild
