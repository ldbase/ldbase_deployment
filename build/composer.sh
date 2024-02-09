echo "COMPOSER_ALLOW_SUPERUSER=1" >> /etc/environment
source /etc/environment
cd /root
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --version=2.6.6 --filename=composer --install-dir=/usr/local/bin
php -r "unlink('composer-setup.php');"
chmod +x /usr/local/bin/composer
/usr/local/bin/composer global config --no-plugins allow-plugins.zaporylie/composer-drupal-optimizations true
/usr/local/bin/composer --no-interaction global require zaporylie/composer-drupal-optimizations
/usr/local/bin/composer --no-interaction config --global --auth github-oauth.github.com $LDBASE_GITHUB_TOKEN