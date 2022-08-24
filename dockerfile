FROM openjdk:8-jre



COPY kafka/lib/kafka ./kafka

RUN  chmod 777 /kafka
RUN  chmod 777 /kafka/*
RUN  chmod 777 /kafka/bin/kafka-server-start.sh
RUN  chmod 777 /kafka/bin/kafka-run-class.sh

COPY start-kafka.sh  /usr/bin
RUN chmod 777  /usr/bin/start-kafka.sh



CMD ["start-kafka.sh"]

   