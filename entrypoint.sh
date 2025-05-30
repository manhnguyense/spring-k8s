#!/bin/sh

CONFIG_FILE="/config/${APP_ENV}.yaml"
exec java \
  -Dspring.config.location=file:$CONFIG_FILE \
  -jar spring-k8s.jar
