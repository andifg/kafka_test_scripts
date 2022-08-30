# Kafka Test Scripts
Prerequesits:
- direnvallow
- kcat
- Local kafka installation at /usr/local/opt/kafka

## Simple Consumer - Producer Tests without Key and Consumer Group
Usage:
- Use docker-compose inside simple-consumer-producer-case directory to start kafka server
- Fill .envrc $KAFKA_BOOTSTRAP_SERVER variable (look at envrc.template how to setup the .envrc)
- Open up 2 Terminal windows
- Listen in the first terminal via first command
- Produce massages via second command. $0 = Message $1 = Number of Messages
```
./simple-consumer-producer-case/consumer_script.sh  
./simple-consumer-producer-case/producer_script.sh "hello" 5
```


## Nice side Commands
Describe all consumer groups with current offset and Lag
```
/usr/local/opt/kafka/bin/kafka-consumer-groups --bootstrap-server $KAFKA_BOOTSTRAP_SERVER --describe --all-groups
```
Describe all topics
```
kcat -L -b $KAFKA_BOOTSTRAP_SERVER
```
