echo "\n\nInstalling Composer..." >> /root/composer.txt 2>&1
echo "Installing Composer..."
cd /root; curl -sS https://getcomposer.org/installer | php >> /root/composer.txt 2>&1
mv composer.phar /usr/local/bin/composer >> /root/composer.txt 2>&1
chmod +x /usr/local/bin/composer >> /root/composer.txt 2>&1
/usr/local/bin/composer global require zaporylie/composer-drupal-optimizations >> /root/composer.txt 2>&1
mkdir /root/.composer >/dev/null 2>&1
cd /root/.composer/ >/dev/null 2>&1
wget https://www.dropbox.com/s/uu5qt5mnlovc7mz/auth.json >/dev/null 2>&1
echo "Done installing Composer." >> /root/composer.txt 2>&1
