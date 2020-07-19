default['lampstack2']['linux']['packages'] = %W(curl wget bind-utils telnet httpd mod_ssl openssl mariadb-server mariadb php php-mysql php-gd expect)
default['lampstack2']['apache']['httpdconf_location'] = '/etc/httpd/conf/httpd.conf'
default['lampstack2']['apache']['httpdconf_backup'] = '/etc/httpd/conf/httpd.conf.original'
default['lampstack2']['php']['index_php_location'] = '/var/www/html/index.php'
default['lampstack2']['php']['info_php_location'] = '/var/www/html/info.php'

