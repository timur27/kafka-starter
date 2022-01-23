docker kill $(docker ps -q) || true \
    && docker rm $(docker ps -a -q) || true