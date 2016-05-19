# docker-registry

## Running

```
./generate_self_signed_cert.sh
export REGISTRY_DIR=`realpath ./`
export REGISTRY_CERTS=`realpath ./certs`
docker-compose -p registry -f docker-compose.yml -f docker-compose.swarm.yml up -d
```
