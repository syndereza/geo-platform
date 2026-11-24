# Geo Platform

\- work in progress \-

## Overview

The goal of this project is a platform for ingesting and processing spatial data from various geoportals.

Planned components (at minimum):

| Service | Technology | Implementation |
|-|-|-|
| data store | spatial database | [PostgreSQL](https://www.postgresql.org/docs/current/) ([PostGIS extension](https://postgis.net/)) |
| data ingester | self-made ETL pipeline | [.NET](https://learn.microsoft.com/en-us/dotnet/), [Python](https://docs.python.org/3/) ([Prefect](https://www.prefect.io/)) |
| view layer | HTTP GIS services | [OGC Web Services](https://developer.ogc.org/ows.html), [Martin tile server](https://martin.maplibre.org/) |
| dashboards | observability solutions | [Grafana](https://grafana.com/) |

For educational purposes, the project shall focus on the ops side of things.
I'm aiming for simplicity of deployment and making the infrastructure reproducible.

## License

GNU AGPL 3.0

Please see the [`LICENSE.txt`](./LICENSE.txt) file.