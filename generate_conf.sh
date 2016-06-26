#!/bin/bash

mkdir -p auth
cp nginx.conf auth/
docker run --rm --entrypoint htpasswd registry:2 -bn admin password > auth/nginx.htpasswd
