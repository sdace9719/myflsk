export DOCKER_HOST=tcp://<HOST_IP>:<HOST_PORT>
export DOCKER_TLS_VERIFY=


#remove previous running container
if [ "$(docker ps -a | grep flsktest)" ]
then
    docker rm -f flsktest
fi

#deploy new container
docker pull <Your Image>
docker run -d -p 5555:5555 --name flsktest <Pulled Image>

