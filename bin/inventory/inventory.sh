#!/bin/bash
HOSTS=$(cat /etc/hosts | grep -v ^# | awk '{print $2}')
HOSTS=$(echo "$HOSTS" | sed -e 's/^\(.*\)$/"\1"/g')
HOSTS=$(echo $HOSTS | sed -e 's/\s/,/g')
echo "{\"all\": {\"hosts\": [$HOSTS]}}"
