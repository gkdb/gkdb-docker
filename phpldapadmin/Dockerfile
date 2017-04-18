FROM osixia/phpldapadmin:0.6.12

#RUN apt-get update && apt-get install -y \
#  vim
#ADD my-config.php /container/service/phpldapadmin/assets/config.php
ADD environment /container/environment/01-custom
RUN ls /var/www/phpldapadmin_bootstrap/
RUN sed -i 's/<onchange>=autoFill(cn;%givenName% %sn%)<\/onchange>/<!-- <onchange>=autoFill(cn;%givenName% %sn%)<\/onchange> -->/' /var/www/phpldapadmin_bootstrap/templates/creation/posixAccount.xml
RUN sed -i 's/<onchange>=autoFill(homeDirectory;\/home\/users\/%uid%)<\/onchange>/<onchange>=autoFill(homeDirectory;\/home\/users\/%uid%)<\/onchange>\n\t<onchange>=autoFill(cn;%uid%)<\/onchange>/' /var/www/phpldapadmin_bootstrap/templates/creation/posixAccount.xml
RUN find /var/www/phpldapadmin_bootstrap/templates/creation/ -type f ! -name 'posix*' -exec rm {} \;
