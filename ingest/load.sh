#!/bin/sh

ls -1 data

# wait until termination
trap 'exit 0' TERM INT
while true; do sleep 1000 & wait $!; done