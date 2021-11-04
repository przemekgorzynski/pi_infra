# Collectd + InfluxDB + Grafana

## Collectd agent
* monitoring/collectd_influxdb_grafana/collectd
* ansible-playbook -i ../../../inventory playbooks/collectd.yml --limit nas

   Go to http://<<ip>>:9100/metrics and check if exposes metrics

## Influxdb & Grafana
* ansible-playbook -i inventory monitoring/collectd_influxdb_grafana/influxdb_grafana/playbooks/collectd.yml --limit nas

# Prometheus + Grafana

## Prometheus Node Exporter
* ansible-playbook -i inventory monitoring/prometheus_grafana/prometheus_node_exporter/playbooks/prometheus_node.yml --limit nas

     Go to http://<<ip>>:9100/metrics and check if exposes metrics

## Prometheus & Grafana
* ansible-playbook -i inventory monitoring/prometheus_grafana/prometheus_grafana/playbooks/prometheus_grafana.yml --limit nas