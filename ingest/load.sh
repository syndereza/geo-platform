#!/bin/sh

LAYERS="$(ls data)"

for LAYER in $LAYERS; do
    echo "processing $LAYER ..."
done

# wait until termination
trap 'exit 0' TERM INT
while true; do sleep 1000 & wait $!; done