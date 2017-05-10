#!/usr/bin/env bash
npm update
npm install
rm -rf ./db
rm -rf ./extension_src/
rm -rf ./extension.zip
if [ -f ./webpack.config.js ]; then
    webpack --config webpack.config.js
else
    echo "no webpack.config.js"
fi
jive-sdk build add-on --apphosting="jive"
