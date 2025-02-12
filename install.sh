# Download and Install WordPress
echo "Downloading WordPress..."
cd .
wget https://wordpress.org/latest.tar.gz
tar -zxf latest.tar.gz
rm latest.tar.gz
echo "Settingup Server..."
rm wordpress/wp-config.php
# cp wp-config.php wordpress/wp-config.php
export $(grep -v '^#' .env | xargs) && envsubst < httpd_config.conf.template > conf/httpd_config.conf
echo "Finish..."
