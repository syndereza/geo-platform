#!/bin/sh

DIR="$1"
LAYERS="$(ls -1 $DIR | grep '\.xml$')"

for LAYER in $LAYERS; do
    echo "processing $LAYER ..."
    
    ogr2ogr -f PostgreSQL \
        PG:"host=$POSTGRES_HOST port=$POSTGRES_PORT dbname=$POSTGRES_DB user=$POSTGRES_USER password=$POSTGRES_PASSWORD" \
        "$DIR/$LAYER" \
        -nln $(echo "$LAYER" | tr ' .' __) \
        -lco GEOMETRY_NAME=geom \
        -overwrite \
        --quiet
done

echo "processing done"

# wait until termination
trap 'exit 0' TERM INT
while true; do sleep 1000 & wait $!; done