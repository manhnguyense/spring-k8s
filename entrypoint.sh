#!/bin/sh

CONFIG_FILE="/app/config/${APP_ENV}.yml"
exec java \
  -Dspring.config.location=file:$CONFIG_FILE \
  -jar spring-k8s.jar
