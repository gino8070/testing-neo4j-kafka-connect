#!/usr/bin/env bash

curl -X POST http://localhost:8083/connectors \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d @source.neo4j.json

curl -X GET \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  localhost:8083/connectors