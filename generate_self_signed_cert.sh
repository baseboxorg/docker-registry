#!/bin/bash

set -e

if [ ${#} -eq 0 ]; then
  echo Usage ${0} [DOMAIN]
fi

function readVariableIfRequired() {
  if [ -z "${!1}" ]; then
    read -p "${1}=" $1
  else
    echo "${1}="${!1}
  fi
}

DOMAIN=${1}
readVariableIfRequired 'DOMAIN'

mkdir -p auth 
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout auth/domain.key -out auth/domain.crt -subj "/CN=${DOMAIN}"
