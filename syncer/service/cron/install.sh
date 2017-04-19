#!/bin/bash -e
echo '*/5 * * * * python /gkdb-ldap/syncer.py' > /etc/cron.d/sync_ldap_sql
