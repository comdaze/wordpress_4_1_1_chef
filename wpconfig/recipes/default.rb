directory "/srv/www/" do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end
directory "/srv/www/wordpress" do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end
cookbook_file "/src/www/wordpress/wp-config.php" do
  source "wp-config.php"
  mode '0755'
  action :create
  owner 'www-data'
  group 'www-data'
end
