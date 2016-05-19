# docker-registry

## Running

```
./generate_self_signed_cert.sh
export REGISTRY_DIR=`realpath ./`
export REGISTRY_CERTS=`realpath ./certs`
docker-compose -p registry -f docker-compose.yml -f docker-compose.swarm.yml up -d
```

Don't forger to add [`insecure-registry`](https://docs.docker.com/registry/insecure/) options to your Docker daemon in order to connect.
