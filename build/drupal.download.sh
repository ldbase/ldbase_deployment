echo "\n\nDownloading Drupal..." >> /root/drupal-download.txt 2>&1
echo "Downloading Drupal..."
cd /var/www/html >/dev/null
rm index.html >/dev/null
composer create-project drupal-composer/drupal-project:8.x-dev drupal \
	--stability dev --no-interaction \
        >> /root/drupal-download.txt 2>&1
cd /var/www/html/drupal >/dev/null 2>&1
rm composer.* >/dev/null 2>&1
cp /ldbase_deployment/assets/composer.json . >/dev/null 2>&1
composer install >> /root/drupal-download.txt 2>&1
echo "Done downloading Drupal." >> /root/drupal-download.txt 2>&1
