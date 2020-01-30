# Update & Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Apche
sudo apt-get install apache2 -y

# PHP
sudo apt-get install php7.2 php7.2-cli php7.2-common php7.2-json php7.2-opcache php7.2-mysql php7.2-mbstring php7.2-zip php7.2-fpm php7.2-curl php7.2-xml php7.2-gd php7.2-zip -y
sudo a2enmod php7.2
sudo a2enmod rewrite
sudo systemctl restart apache2

# MySql
sudo apt install mysql-server -y
# sudo mysql_secure_installation

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Node
sudo apt-get install nodejs -y
sudo apt-get install npm -y

# Restart Services
sudo service apache2 restart
sudo service mysql restart

# Clean Up Box
sudo apt-get clean -y
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY
sudo cat /dev/null > ~/.bash_history && history -c && exit