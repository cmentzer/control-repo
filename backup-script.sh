#!/bin/bash
#
# Backup Script
#


# Format: YEAR MONTH DAY - HOUR MINUTE SECOND
DATE=$(date +%Y%m%d-%H%M%S)

#MySQL backup file
MYSQLTARGET="/tmp/backup-mysql-$DATE.sql"

#Target file
TARTARGET="/tmp/backup-$DATE.tar.gz"

sudo -u pe-postgres /opt/puppetlabs/server/apps/postgresql/bin/pg_dumpall -c -f $MYSQLTARGET

tar -czvf $TARTARGET $MYSQLTARGET /etc/puppetlabs /opt/puppetlabs/server/data/console-services/certs /opt/puppetlabs/server/data/postgresql/9.4/data/certs /etc/puppetlabs/puppetserver/ssh
