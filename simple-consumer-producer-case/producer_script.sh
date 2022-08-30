#!/bin/bash
[ -z "$1" ] && echo "Missing first input argument! Please provide a message to be send to Kafka" && exit 1
[ -z "$2" ] && echo "Missing second input argument! Please provide number of times the message should get send" && exit 1

for i in $( eval echo {0..$2} )
do
echo "Sending request"; echo $1 | /usr/local/opt/kafka/bin/kafka-console-producer --bootstrap-server $KAFKA_BOOTSTRAP_SERVER  --topic new_topic;
done
