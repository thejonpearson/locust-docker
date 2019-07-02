#!/bin/sh

set -e
locustfile=${locustfile:-/locustio/locustfile}

cd /locustio
locust -f $locustfile --host=$testHost $locust_options

