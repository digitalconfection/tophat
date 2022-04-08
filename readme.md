# Tophat
A simple LAMP stack for PHP development.

## Prerequisites:
First, you will need to download and install the following:
- Vagrant - https://www.vagrantup.com/
- Virtual Box - https://www.virtualbox.org/

## Getting Started:
To get started, do the following:
 - git clone https://github.com/digitalconfection/tophat.git my-project  
 - cd my-project
 - vagrant up
 
Then in your browser, go to http://192.168.33.13, and you are done!

## Set up xdebug 
Edit `/etc/php/7.4/mods-available/xdebug.ini` with:

```zend_extension=xdebug.so
xdebug.mode = debug
xdebug.start_with_request = yes
xdebug.discover_client_host = 1
xdebug.client_port = 9003
xdebug.client_host = 10.0.2.2
xdebug.idekey = VSCODE
xdebug.log = /var/log/xdebug.log```

Then run `sudo systemctl restart apache2`
