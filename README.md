## What is it? 
Ready to use kafka environment. 

## How to use? 
Run the `startup.sh` script, which: 
1. Builds the image 
2. Runs the container from the freshly built image 
3. Runs SSH with the kafka being a workdir


For us to be able to send and receive events, we need: 
1. Zookeeper being started 
2. Kafka broker being started 
3. Topic being created 
4. Producer + Consumer being up and ready

### Helper commands
```
docker exec -it kafka /bin/bash -i
bin/zookeeper-server-start.sh config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties
bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092  
bin/kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092
bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092
```