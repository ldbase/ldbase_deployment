cd /var/www/html/drupal
/usr/local/bin/composer self-update
/usr/local/bin/composer require "composer/installers:^1" --no-update
/usr/local/bin/composer require "drush/drush:^12" --no-update
/usr/local/bin/composer require "drupal/address:^2" --no-update
/usr/local/bin/composer require "drupal/captcha:^2" --no-update
/usr/local/bin/composer require "drupal/ctools:^4" --no-update
/usr/local/bin/composer require "drupal/facets:^3" --no-update
/usr/local/bin/composer require "drupal/group:^2" --no-update
/usr/local/bin/composer require "drupal/health_check:^3" --no-update
/usr/local/bin/composer require "drupal/metatag:^2" --no-update
/usr/local/bin/composer update --with-all-dependencies
/var/www/html/drupal/vendor/bin/drush updatedb
/var/www/html/drupal/vendor/bin/drush cache:rebuild 

/usr/local/bin/composer require "drupal/group:^3" --no-update
/usr/local/bin/composer update --with-all-dependencies
/var/www/html/drupal/vendor/bin/drush updatedb
/var/www/html/drupal/vendor/bin/drush cache:rebuild 
