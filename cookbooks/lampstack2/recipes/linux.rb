['nano', 'curl', 'wget', 'bind-utils', 'telnet', 'install', 'httpd', 'mod_ssl', 'openssl', 'mariadb-server', 'mariadb', 'php', 'php-mysql', 'php-gd', 'php-mbstring'].each do |package|
  package package do
    action :install
  end
end