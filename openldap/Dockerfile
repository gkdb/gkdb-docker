FROM osixia/openldap:1.1.8
#MAINTAINER Your Name <your@name.com>

#ADD bootstrap /container/service/slapd/assets/config/bootstrap
RUN rm -rf /container/service/slapd/assets/config/bootstrap/schema/mmc/*.schema
#RUN /bin/bash /container/service/slapd/assets/config/bootstrap/run_all.sh
#ADD certs /container/service/slapd/assets/certs
ADD environment /container/environment/01-custom

# Debugging
#RUN apt-get update
#RUN apt-get install -y vim
