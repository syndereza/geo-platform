FROM ghcr.io/osgeo/gdal:alpine-small-3.13.3

WORKDIR /ingest
RUN apk add unzip
COPY . .
RUN mkdir data data_raw && unzip -d data_raw *.zip \
 && mv data_raw/PL.PZGiK.3700.0664/BDOT10k/*.xml data \
 && rm -r data_raw *.zip 

ENTRYPOINT ["/ingest/load.sh"]