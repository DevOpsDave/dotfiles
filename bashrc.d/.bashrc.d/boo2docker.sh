#ssh-add ~/.ssh/id_boot2docker 2> /dev/null
export DOCKER_IP=192.168.59.103
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/dave.barcelo/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_OPTS="--dns 10.0.0.10 --dns 10.199.0.10"
