#!/bin/sh

f="/sys/fs/cgroup/memory/memory.limit_in_bytes"
exec java -jar spring-k8s.jar

