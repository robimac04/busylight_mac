#!/bin/bash

###

cp -r busylight /usr/local/busylight
BASE=/usr/local/busylight
chown -R $SUDO_USER:$(id -gn $SUDO_USER) $BASE

###

git clone https://github.com/porsager/busylight.git $BASE/API
cd $BASE/API
chown -R $SUDO_USER:$(id -gn $SUDO_USER) $BASE
su $SUDO_USER -c 'npm install .'

###

echo "** installed busylight scripts and API to $BASE **"
