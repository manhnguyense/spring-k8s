#!/bin/sh

CONFIG_FILE="/app/config/${APP_ENV}.yml"
exec java \
  -Dspring.config.location=file:$CONFIG_FILE \
  -jar spring-k8s.jar

# This script sets the configuration file based on the APP_ENV environment variable
#docker run -p 8080:8080 \
#  -e APP_ENV=prod \
#  -v $(pwd)/config:/app/config \
#  yourapp:latest
