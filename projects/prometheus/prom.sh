docker run --name prom -d -p 9090:9090 -log.level=debug\
  -v $PWD/config:/etc/prometheus \
  -v $PWD/data/prometheus:/prometheus \
  prom/prometheus:v2.28.1 \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.retention.time=10d \
  --web.enable-lifecycle \
  --storage.tsdb.max-block-duration=2h \
  --storage.tsdb.min-block-duration=2h

