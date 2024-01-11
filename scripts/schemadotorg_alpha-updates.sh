#!/bin/bash

#
# see https://www.drupal.org/project/schemadotorg for information
# regarding updates between alpha releases
#

cd /var/www/html/drupal

echo -e "Beginning schemadotorg update\n\nUninstall schemadotorg and all sub-modules \n\n"
/var/www/html/drupal/vendor/bin/drush pmu schemadotorg -y

echo -e "\n\nUpdate schemadotorg module. \n\n"
/usr/local/bin/composer -n require 'drupal/schemadotorg:^1.0@alpha'

echo -e "\n\nEnable schemadotorg and all sub-modules.\n\n"
/var/www/html/drupal/vendor/bin/drush en schemadotorg schemadotorg_descriptions schemadotorg_jsonld schemadotorg_jsonld_breadcrumb schemadotorg_mapping_set schemadotorg_media schemadotorg_paragraphs schemadotorg_report schemadotorg_simple_sitemap schemadotorg_subtype schemadotorg_taxonomy schemadotorg_ui

echo -e "\n\nCopy existing schema mappings to a temp directory . \n\n"
mkdir /var/www/html/drupal/web/libraries/ldbase_config/sync/temp_schemadotorg
cp /var/www/html/drupal/web/libraries/ldbase_config/sync/schemadotorg.schemadotorg_mapping.*.yml /var/www/html/drupal/web/libraries/ldbase_config/sync/temp_schemadotorg
echo -e "\n\nImport the existing schema mappings. \n\n"
/var/www/html/drupal/vendor/bin/drush config:import -y --partial --source=/var/www/html/drupal/web/libraries/ldbase_config/sync/temp_schemadotorg

echo -e "\n\nRemove the temp directory."
rm /var/www/html/drupal/web/libraries/ldbase_config/sync/temp_schemadotorg/*
rmdir /var/www/html/drupal/web/libraries/ldbase_config/sync/temp_schemadotorg

echo -e "\n\nRefresh caches.\n\n"
/var/www/html/drupal/vendor/bin/drush -y cache:rebuild