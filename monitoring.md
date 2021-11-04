# Collectd + InfluxDB + Grafana

## Collectd agent
* cd monitoring/collectd_influxdb_grafana/collectd
* ansible-playbook -i ../../../inventory playbooks/collectd.yml --limit SERVERNAME

   Go to http://<<ip>>:9103/metrics and check if exposes metrics

## Influxdb & Grafana
* cd monitoring/collectd_influxdb_grafana/influxdb_grafana
* ansible-playbook -i ../../../inventory playbooks/influxdb_grafana.yml --limit SERVERNAME

# Prometheus + Grafana

## Prometheus Node Exporter
* cd monitoring/prometheus_grafana/prometheus_node_exporter
* ansible-playbook -i ../../../inventory playbooks/prometheus_node.yml --limit SERVERNAME

     Go to http://<<ip>>:9100/metrics and check if exposes metrics

## Prometheus & Grafana
* cd monitoring/prometheus_grafana/prometheus_grafana
* ansible-playbook -i ../../../inventory playbooks/prometheus_grafana.yml --limit SERVERNAME