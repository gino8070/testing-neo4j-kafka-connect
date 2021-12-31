#!/usr/bin/env bash

docker-compose exec kafka kafka-console-consumer --from-beginning --bootstrap-server kafka:19092 --topic $1