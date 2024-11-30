#!/bin/bash

NETWORK="webui"

NETWORKEXISTS=$(docker network inspect $NETWORK)
if [[ "${NETWORKEXISTS}" == "[]" ]]; then
    docker network create $NETWORK
fi


docker compose up -d

