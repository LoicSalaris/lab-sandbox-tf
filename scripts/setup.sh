#!/bin/bash
              apt-get update
              apt-get install -y apache2
              sed -i -e 's/80/8080/' /etc/apache2/ports.conf
              echo "Welcome in the lab" > /var/www/html/index.html
              systemctl restart apache2