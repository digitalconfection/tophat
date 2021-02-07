# Update & Upgrade
sudo apt-get update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y

# Apache
sudo apt-get install apache2 -y

# Git & Curl
sudo apt install git -y 
sudo apt install curl -y 

# PHP 7.4
sudo apt install php7.4 -y
sudo apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y
sudo a2enmod proxy_fcgi setenvif
sudo a2enmod rewrite
sudo systemctl restart apache2

# Enable Apache Mod_Rewrite 
sudo bash -c 'echo "<Directory /var/www/html>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Require all granted
</Directory>" >> /etc/apache2/sites-available/000-default.conf'
sudo service apache2 restart

# MySql
sudo apt install mysql-server -y
sudo mysql --execute="ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'root';"
sudo mysql --execute="GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';"
sudo service mysql restart

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Node
sudo apt-get install nodejs -y
sudo apt-get install npm -y

# phpMyAdmin
# sudo apt install phpmyadmin php-gettext -y --assume-yes

# Restart Services
sudo service apache2 restart
sudo service mysql restart

# Clean Up Box
sudo rm /var/www/*.log
sudo apt-get clean -y

## Set up xdebug 
# https://medium.com/@mohsinyounas05/how-to-enable-xdebug-for-laravel-with-vagrant-and-phpstorm-df5403c9e793
