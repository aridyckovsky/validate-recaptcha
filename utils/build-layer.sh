#!/bin/bash
set -eo pipefail

docker run --rm -v "$PWD":/var/task lambci/lambda:build-nodejs12.x npm rebuild --build-from-source
npm install