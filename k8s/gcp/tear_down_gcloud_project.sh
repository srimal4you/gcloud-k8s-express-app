#!/bin/bash -ex

if [[ "$1" = "" ]]; then
  echo "usage specify PROJECT_ID";
  exit 1;
fi

PROJECT_ID=${1:-"test-gitlabci-k8s"}

gcloud projects delete $PROJECT_ID
