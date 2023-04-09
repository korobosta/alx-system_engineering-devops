# Install Nginx web server with puppet.

exec { 'Install_Nginx':
  command  =>'apt-get -y update && apt-get -y install nginx && echo "Holberton School Server 2" > /var/www/html/index.nginx-debian.html && new_string="server_name _;\n\tadd_header X-Served-By $HOSTNAME;" && sed -i "s/server_name _;/$new_string/" /etc/nginx/sites-available/default && service nginx restart',
  provider => 'shell',
}
