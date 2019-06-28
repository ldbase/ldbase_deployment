# Post-install configurations
cd /var/www/html/drupal; mkdir -p private_files/ldbase; chmod -R 777 private_files
echo '$settings["file_private_path"] = "/var/www/html/drupal/private_files/ldbase";' \
	>> /var/www/html/drupal/web/sites/default/settings.php
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
composer require drupal/group >> /root/composer-preinstalls.txt 2>&1
composer require drupal/matomo >> /root/composer-preinstalls.txt 2>&1
if [ -d /vagrant ]; then service mysql start; fi


# Enable LDbase required modules
/var/www/html/drupal/vendor/bin/drupal module:install token >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install backup_migrate >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install simple_sitemap >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install simple_sitemap_views >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_views >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_hreflang >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_favicons >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_mobile >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_dc >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_dc_advanced >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_facebook >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_facebook >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_google_cse >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_open_graph >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_pinterest >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install metatag_twitter_cards >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install devel >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install devel_generate >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install devel_php >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install kint >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webprofiler >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_access >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_image_select >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_node >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_submission_log >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_templates >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_ui >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install webform_views >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install honeypot >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install search_api >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install search_api_db >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install search_api_autocomplete >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install facets >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install entity_usage >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install paragraphs >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install rules >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install group >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install gnode >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drupal module:install matomo >> /root/drupal-module-installation.txt 2>&1
/var/www/html/drupal/vendor/bin/drush webform:libraries:download >> /root/drupal-module-installation.txt 2>&1


# Download JavaScript libraries
cd /var/www/html/drupal/web/libraries
git clone https://github.com/components/highlightjs
mkdir d3; cd d3; wget https://d3js.org/d3.v3.min.js; mv d3.v3.min.js d3.min.js >> /dev/null 2>&1
cd /var/www/html/drupal 


# Import LDbase configuration data
cd /var/www/html/drupal/
/var/www/html/drupal/vendor/bin/drush config-set "system.site" uuid "6d3939a8-a52f-4862-a77a-176786dcad2a" -y >> /root/ldbase-system-config.txt 2>&1
/var/www/html/drupal/vendor/bin/drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();' >> /root/ldbase-system-config.txt 2>&1
cd /root/
git clone https://github.com/ldbase/ldbase_config
/root/ldbase_config/bin/import.sh >> /root/ldbase-system-config.txt 2>&1


# Prepare for lift off 
/var/www/html/drupal/vendor/bin/drupal node:access:rebuild
/var/www/html/drupal/vendor/bin/drush cache:rebuild
