#!/bin/bash

mkdir -p auth
docker run --entrypoint htpasswd httpd:2.4 -Bbn visitor vistor > auth/httpd.htpasswd
docker run --entrypoint htpasswd httpd:2.4 -Bbn admin password >> auth/httpd.htpasswd
echo "pusher: admin" > auth/httpd.groups
