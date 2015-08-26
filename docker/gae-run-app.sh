#!/usr/bin/env bash

PORT=8000
IP_ADDR=`ifconfig eth0 | grep -o "addr:[0-9][0-9][0-9]\.[0-9]*\.[0-9]*\.[0-9]*" | awk -F ":" '{print $2}'`

cd ${PERSONFINDER_DIR}
echo "Starting Person Finder server at ${IP_ADDR}:${PORT}"
tools/gae run app --port ${PORT} --host ${IP_ADDR} --admin_host=${IP_ADDR}
echo "Person Finder server stopped"
