export DOCKER_HOST=tcp://18.237.124.77:2375
export DOCKER_TLS_VERIFY=

if [ "$(docker ps -a | grep flsktest)" ]
then
    docker rm -f flsktest
fi
docker pull sw9719/circleciflasktest:latest
docker run -d -p 5555:5555 --name flsktest sw9719/circleciflasktest:latest

