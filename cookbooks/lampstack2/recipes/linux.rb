['nano', 'curl', 'wget', 'bind-utils', 'telnet', 'httpd', 'mod_ssl', 'openssl', 'mariadb-server', 'mariadb', 'php', 'php-mysql', 'php-gd', 'php-mbstring'].each do |package|
  package package do
    action :install
  end
end