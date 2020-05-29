#!/bin/bash

echo "### Create client cert:"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cert/client.key -out cert/client.crt

echo "### Create server cert:"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cert/server.key -out cert/server.crt
