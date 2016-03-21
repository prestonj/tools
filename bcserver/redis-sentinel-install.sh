#!/bin/sh

set -e

# assumes you're logged in as super user

cp redis-sentinel /etc/rc.d/init.d
chown root /etc/rc.d/init.d/redis-sentinel
chmod 755 /etc/rc.d/init.d/redis-sentinel

pushd /etc/rc.d
cd rc2.d
ln -s ../init.d/redis-sentinel S59_redis-sentinel
cd ../rc3.d
ln -s ../init.d/redis-sentinel S59redis-sentinel
cd ../rc4.d
ln -s ../init.d/redis-sentinel S59redis-sentinel
cd ../rc3.d
ln -s ../init.d/redis-sentinel S59redis-sentinel
popd

