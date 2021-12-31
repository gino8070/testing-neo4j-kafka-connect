# TESTING-NEO4J-KAFKA-CONNECT

1. run docker-compose up

```
docker-compose up -d
```

2. register neo4j source connector

```
./register-source-neo4j-connector.sh
```

3. generate test data

```
./gen-data.sh
```

4. show messages

```
./consume-neo4j-topic.sh neo4j-source
```

5. add test data

```
./gen-data.sh
```

## Appendix

consume offset

```
./consume-neo4j-topic.sh _neo4j-connect-offsets
```

list topics

```
./list-topics.sh
```