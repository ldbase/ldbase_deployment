echo "COMPOSER_ALLOW_SUPERUSER=1" >> /etc/environment
source /etc/environment
cd /root

curl -O https://getcomposer.org/download/2.6.6/composer.phar
curl -O https://getcomposer.org/download/2.6.6/composer.phar.sha256sum

shasum --check composer.phar.sha256sum
if test $? -ne 0; then
   echo "shasum check failed for Composer. Exiting."
   exit 1
fi

cp composer.phar /usr/local/bin/composer
chown root:root /usr/local/bin/composer
chmod 0755 /usr/local/bin/composer
/usr/local/bin/composer global config --no-plugins allow-plugins.zaporylie/composer-drupal-optimizations true
/usr/local/bin/composer --no-interaction global require zaporylie/composer-drupal-optimizations
/usr/local/bin/composer --no-interaction config --global --auth github-oauth.github.com $LDBASE_GITHUB_TOKEN


