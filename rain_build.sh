#!/bin/sh

echo "------------------- Start Pulling --------------------"
git pull origin dev

echo "------------------- Start Installing -----------------"
npm install

echo "------------------- Start Building -------------------"
npm run build

sudo cp -r dist/* /usr/local/var/www/rain/
echo "All Is Well!"
