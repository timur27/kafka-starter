sh ./docker-containers-cleanup.sh 
docker build -t kafka-starter:v0.1 --no-cache=false . \
    && docker run -t -d --name kafka kafka-starter:v0.1 \
    && docker exec -it kafka /bin/bash -i