#!/usr/bin/env bash

curl -s \
  -X POST \
  -u neo4j:streams \
  -H "Accept: application/json" \
  -H "Content-type: application/json" \
  -d '
{
  "statements": [
    {
      "statement": "CREATE (t:Test{ name: \"TEST 1234\", lastUpdateAt: timestamp(), array: [3,4,5], datetime: localdatetime(), boolean: false})"
    }
  ]
}' \
  http://localhost:7474/db/data/transaction/commit

curl -s \
  -X POST \
  -u neo4j:streams \
  -H "Accept: application/json" \
  -H "Content-type: application/json" \
  -d '
{
  "statements": [
    {
      "statement": "CREATE (t:Test{ name: \"TEST 2345\", lastUpdateAt: timestamp(), array: [3,4,5], datetime: localdatetime(), boolean: false})"
    }
  ]
}' \
  http://localhost:7474/db/data/transaction/commit

curl -s \
  -X POST \
  -u neo4j:streams \
  -H "Accept: application/json" \
  -H "Content-type: application/json" \
  -d '
{
  "statements": [
    {
      "statement": "MATCH (t:Test) RETURN t"
    }
  ]
}' \
  http://localhost:7474/db/data/transaction/commit