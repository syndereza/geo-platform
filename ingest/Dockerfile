FROM ghcr.io/osgeo/gdal:alpine-small-3.13.3

WORKDIR /ingest
RUN apk add unzip
COPY . .
RUN mkdir data && unzip -jd data *.zip '*.xml' && rm *.zip 

ENTRYPOINT ["/ingest/load.sh"]