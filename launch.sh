#!/bin/bash

set -e

#set the DEBUG env variable to turn on debugging
[[ -n "$DEBUG" ]] && set -x

/bin/prometheus -config.file=/prometheus-consul/config.d/prometheus.yml \
             -storage.local.path=/prometheus \
             -web.console.libraries=/etc/prometheus/console_libraries \
             -web.console.templates=/etc/prometheus/consoles
