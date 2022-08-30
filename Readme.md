# Kafka Test Scripts

## Simple Consumer - Producer Tests without Key and Consumer Group
Prerequesits:
- Use docker-compose to start kafka server
- Fill .envrc $KAFKA_BOOTSTRAP_SERVER variable
- Open up 2 Terminal windows
- Listen in the first terminal via first command
- Produce massages via second command. $0 = Message $1 = Number of Messages
```
./consumer_script.sh  
./producer_script.sh "hello" 5
```
