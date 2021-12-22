  prometheus:
    image: "prom/prometheus:v2.22.0"
    container_name: prom-mon
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
    command: --web.enable-lifecycle  --config.file=/etc/prometheus/prometheus.yml
    ports:
      - "9090:9090"
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
    extra_hosts:
      - "host.docker.internal:host-gateway"
    links:
      - csvserver
