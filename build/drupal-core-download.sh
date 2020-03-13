# Set up Drupal codebase
cd /var/www/html/
rm index.html
composer create-project drupal-composer/drupal-project:8.x-dev drupal \
	--stability dev --no-interaction \
        >> /root/drupal-install.txt 2>&1
