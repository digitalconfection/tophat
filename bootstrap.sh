# Update & Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Apche
sudo apt-get install apache2 -y

# PHP
sudo apt install php7.2-cli -y
sudo apt-get install -y php7.2 -y

# MySql
sudo apt install mysql-server -y
sudo mysql_secure_installation

# Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Node
sudo apt-get install nodejs -y
sudo apt-get install npm -y

# Restart Services
sudo service apache2 restart

# Clean Up Box
sudo apt-get clean -y
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY -y
sudo cat /dev/null > ~/.bash_history && history -c && exit


