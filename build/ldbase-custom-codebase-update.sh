# Update custom modules related to LDbase
cd /ldbase_deployment; git pull

cd /var/www/html/drupal; composer update \
	fsulib/portcullis \
	ldbase/ldbase_content \
        ldbase/ldbase_handlers \
        ldbase/ldbase_config \
	--no-interaction
