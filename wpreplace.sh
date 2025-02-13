# Download and Install WordPress
echo "Backingup wp-content..."
mv wordpress/wp-content wordpress/wp-content-bak
echo "Downloading WP..."
cd .
wget https://wordpress.org/latest.tar.gz
tar -zxf latest.tar.gz
rm latest.tar.gz
echo "Returning wp-content..."
rm -rf wordpress/wp-content
mv wordpress/wp-content-bak wordpress/wp-content
rm wordpress/wp-config.php
cp wp-config.php wordpress/wp-config.php
echo "Finish."
