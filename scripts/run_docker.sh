#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

cd backend/target/docker/stage
docker build -t learn .
docker run -p 8080:8080 -ti learn
