cd /root
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --version=1.10.10 --filename=composer --install-dir=/usr/local/bin
php -r "unlink('composer-setup.php');"
chmod +x /usr/local/bin/composer
/usr/local/bin/composer global require zaporylie/composer-drupal-optimizations
mkdir /root/.composer
cd /root/.composer/
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json
