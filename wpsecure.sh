# Download and Install WordPress
echo "Securing WP..."
rm wordpress/wp-config.php
cp wp-config.php wordpress/wp-config.php
export $(grep -v '^#' .env | xargs) && envsubst < httpd_config.conf.template > conf/httpd_config.conf
echo "Finish."
