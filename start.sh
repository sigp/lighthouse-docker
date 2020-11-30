#!/usr/bin/env bash

set -e  # Exit immediately if a command exits with a non-zero status.

export LIGHTHOUSE_DATA_DIR=./lighthouse-data
export GETH_DATA_DIR=./geth-data
export HOST_UID=${UID}

# Make sure data dirs are created without root being the owner
mkdir -p ${LIGHTHOUSE_DATA_DIR}
mkdir -p ${GETH_DATA_DIR}

#docker-compose pull
docker-compose down
docker-compose up -d
