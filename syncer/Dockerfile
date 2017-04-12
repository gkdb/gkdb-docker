FROM osixia/light-baseimage:0.2.6

# Download nginx from apt-get and clean apt-get files
RUN apt-get -y update \
    && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       python-ldap \
       cron \
       #vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/install-service
RUN /container/tool/install-service

# Add default env directory
ADD environment /container/environment/99-default

# Expose ports
# EXPOSE
