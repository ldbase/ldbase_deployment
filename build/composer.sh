cd /root
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --version=2.1.11 --filename=composer --install-dir=/usr/local/bin
php -r "unlink('composer-setup.php');"
chmod +x /usr/local/bin/composer
/usr/local/bin/composer --no-interaction global require zaporylie/composer-drupal-optimizations
mkdir -p /root/.config/composer/
cd /root/.config/composer/ 
cp /ldbase_deployment/assets/auth.json auth.json
sed -i -e "s#_LDBASE_GITHUB_TOKEN_#${LDBASE_GITHUB_TOKEN}#g" /root/.config/composer/auth.json
