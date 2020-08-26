echo "Installing Composer..." | tee /root/composer.log 2>&1
cd /root; curl -sS https://getcomposer.org/installer | php >> /root/composer.log 2>&1
mv composer.phar /usr/local/bin/composer >> /root/composer.log 2>&1
chmod +x /usr/local/bin/composer >> /root/composer.log 2>&1
/usr/local/bin/composer global require zaporylie/composer-drupal-optimizations >> /root/composer.log 2>&1
mkdir /root/.composer >/dev/null 2>&1
cd /root/.composer/ >/dev/null 2>&1
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json >/dev/null 2>&1
echo "Done installing Composer." | tee /root/composer.log 2>&1
