# docker-registry

## Running

```
./generate_self_signed_cert.sh
./generate_conf.sh
export REGISTRY_DIR=`realpath ./data`
export PROXY_CONF_DIR=`realpath ./auth`
docker-compose -p registry up -d
```

Don't forger to add [`insecure-registry`](https://docs.docker.com/registry/insecure/) options to your Docker daemon in order to connect.
