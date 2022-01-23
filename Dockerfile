FROM ubuntu:18.04
RUN apt-get update \
	&& apt-get install -y openjdk-8-jdk \ 
    && apt-get install -y wget \ 
    && java -version
RUN wget https://dlcdn.apache.org/kafka/3.0.0/kafka_2.13-3.0.0.tgz \
    && tar -xzf kafka_2.13-3.0.0.tgz \ 
    && rm -rf kafka_2.13-3.0.0.tgz \
    && cd kafka_2.13-3.0.0/
COPY start-kafka-server.sh start-zookeper.sh kafka_2.13-3.0.0/
WORKDIR kafka_2.13-3.0.0/