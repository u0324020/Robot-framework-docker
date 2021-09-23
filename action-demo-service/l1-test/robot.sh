#!/bin/bash

ALLOWED_SHARED_MEMORY='1g'
BROWSER='chrome'
ROBOT_THREADS=1
PABOT_OPTIONS=''
ROBOT_OPTIONS=''
ROBOT_REPORTS_DIR='results'
ROBOT_TESTS_DIR='tests'


REPORTS_DIR=$(pwd)/$ROBOT_REPORTS_DIR
TESTS_DIR=$(pwd)/$ROBOT_TESTS_DIR
sudo mkdir $REPORTS_DIR && sudo chmod 777 $REPORTS_DIR

docker run --shm-size=$ALLOWED_SHARED_MEMORY \
  -e BROWSER=$BROWSER \
  -e ROBOT_THREADS=$ROBOT_THREADS \
  -e PABOT_OPTIONS=$PABOT_OPTIONS \
  -e ROBOT_OPTIONS=$ROBOT_OPTIONS \
  -v $REPORTS_DIR:/opt/robotframework/reports:Z \
  -v $TESTS_DIR:/opt/robotframework/tests:Z \
  --user $(id -u):$(id -g) \
  --add-host=host.docker.internal:host-gateway \
  ppodgorsek/robot-framework:latest
