# Grafana Loki test

HA Loki cluster with S3-compatible storage behind load balancer.

## Run

```shell
$ docker-compose up [-d]

```

## Test
Send logs:
```shell
$ ./send-logs.sh
```

## Observe
Grafana: *admin:password@localhost:3000*

Minio:   *admin:password@localhost:9001*
