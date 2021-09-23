#!/bin/bash

GH_ACCESS_TOKEN=$1
REPOSITORY_OWNER=$2
REPOSITORY=$3
COMMIT_SHA=$4
REPORT_PATH=$5

REPORT_PATH=$(pwd)/$REPORT_PATH

docker run \
  -e GH_ACCESS_TOKEN=$GH_ACCESS_TOKEN \
  -e REPO_OWNER=$REPOSITORY_OWNER \
  -e REPOSITORY=$REPOSITORY \
  -e COMMIT_SHA=$COMMIT_SHA \
  -e REPORT_PATH="/reports" \
  -v $REPORT_PATH:/reports:Z \
  --user $(id -u):$(id -g) \
  joonvena/robot-reporter:latest