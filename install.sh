#!/bin/bash

###

cp -r busylight /usr/local/busylight
BASE=/usr/local/busylight
chown -R $USER $BASE
cd $BASE

###

git clone https://github.com/porsager/busylight.git $BASE/API
cd $BASE/API
npm install .
chown -R $USER $BASE

###

echo "** installed busylight scripts and API to $BASE **"
