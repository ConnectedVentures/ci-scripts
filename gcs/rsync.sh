#!/bin/bash

echo $1 > ${HOME}/gcp-key.json
gcloud auth activate-service-account --key-file ${HOME}/gcp-key.json
gcloud --quiet config set project $2
gcloud --quiet config set compute/zone $3
gsutil rsync -d -r $4 $5
