#!/bin/bash

printf "%s" "$GOOGLE_AUTH" > ${HOME}/gcp-key.json
gcloud auth activate-service-account --key-file ${HOME}/gcp-key.json
gcloud --quiet config set project ${GOOGLE_PROJECT_ID}
gcloud --quiet config set compute/zone ${GOOGLE_COMPUTE_ZONE}
gsutil -m rsync -J -d -r $1 $2
