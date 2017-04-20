FROM osixia/light-baseimage:0.2.6

# Download nginx from apt-get and clean apt-get files
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/service-available/:cron/download.sh
RUN apt-get -y update \
    && /container/tool/add-service-available :cron \
    && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       ca-certificates \
       python-ldap \
       git \
       python-psycopg2 \
       vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/install-service
RUN /container/tool/install-service

# Add default env directory
#ADD environment /container/environment/99-default

RUN cd / && git clone https://github.com/gkdb/gkdb-ldap.git
# Expose ports
# EXPOSE
