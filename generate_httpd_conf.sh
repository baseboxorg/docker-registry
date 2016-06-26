#!/bin/bash

mkdir -p auth
docker run --rm --entrypoint htpasswd httpd -Bbn visitor vistor > auth/httpd.htpasswd
docker run --rm --entrypoint htpasswd httpd -Bbn admin password >> auth/httpd.htpasswd
echo "pusher: admin" > auth/httpd.groups
