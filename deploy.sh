#!/usr/bin/env bash
PROJECT_PATH=$(pwd)
CONFIG_FILE="${PROJECT_PATH}/profile"
AWS_PROFILE="$(head -n 1 $CONFIG_FILE)"
STACK_NAME=$(basename $PROJECT_PATH)
aws cloudformation --profile $AWS_PROFILE deploy --stack-name $STACK_NAME --template-file $STACK_NAME.yml
