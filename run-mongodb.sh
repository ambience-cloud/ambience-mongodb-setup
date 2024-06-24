#!/bin/bash
mongopasswd=`cat mongo-root.pass`
echo $mongopasswd

docker run --name elixir-mongo \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=$mongopasswd \
    -p 127.0.0.1:27017:27017 \
    -v elixirmongo:/data/db \
    mongo



