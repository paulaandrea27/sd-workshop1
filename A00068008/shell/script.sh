      yum install -y httpd
      yum install -y wget
      cd /var/www/html
      wget www.icesi.edu.co
      systemctl start httpd.service
      systemctl enable httpd.service
