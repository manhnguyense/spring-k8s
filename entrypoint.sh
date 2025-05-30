#!/bin/sh

exec java -Dspring.profiles.active=$APP_ENV -jar spring-k8s.jar
