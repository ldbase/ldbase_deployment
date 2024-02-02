cd /var/www/html/drupal
/usr/local/bin/composer self-update
/usr/local/bin/composer require "composer/installers:^1.9" --no-update
/usr/local/bin/composer require "drush/drush:^12" --no-update
#/usr/local/bin/composer require "drupal/captcha:^2" --no-update
#/usr/local/bin/composer require "drupal/ctools:^4" --no-update
#/usr/local/bin/composer require "drupal/facets:^3" --no-update
#/usr/local/bin/composer require "drupal/health_check:^3" --no-update
#/usr/local/bin/composer require "drupal/metatag:^2" --no-update
#/usr/local/bin/composer require "drupal/address:^2" --no-update 
#/usr/local/bin/composer require "drupal/group:^2" --no-update
#/usr/local/bin/composer require "drupal/group:^3" --no-update #Must update to ^2 before moving to ^3
/usr/local/bin/composer require drupal/core-recommended:^10 drupal/core-composer-scaffold:^10 drupal/core-project-message:^10 --no-update
/usr/local/bin/composer update -W
/var/www/html/drupal/vendor/bin/drush updatedb
/var/www/html/drupal/vendor/bin/drush cache:rebuild
