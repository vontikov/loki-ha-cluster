#!/bin/bash

port=${1:-3100}

for i in {1..100}
do
  now=$(date +%s%N)
  curl \
    -v \
    -H "Content-Type: application/json" \
    -XPOST -s "http://localhost:${port}/loki/api/v1/push" \
    --data-raw  '{"streams": [
        {
          "stream": { "foo": "bar" },
          "values": [ ['"${now}"', "'"msg: ${i}"'" ] ]
        }
      ]}'
  sleep 0.5
done
