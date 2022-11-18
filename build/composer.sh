cd /root
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --version=2.1.11 --filename=composer --install-dir=/usr/local/bin
php -r "unlink('composer-setup.php');"
chmod +x /usr/local/bin/composer
/usr/local/bin/composer --no-interaction global require zaporylie/composer-drupal-optimizations
/usr/local/bin/composer --no-interaction config --global --auth github-oauth.github.com $LDBASE_GITHUB_TOKEN
