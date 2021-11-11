# Still in progress

# Prometheus + Grafana

### Prometheus Node Exporter
`cd monitoring/prometheus_grafana/prometheus_node_exporter`                    
`ansible-playbook -i ../../../inventory playbooks/prometheus_node.yml --limit SERVERNAME`

      Go to http://<<ip>>:9100/metrics and check if exposes metrics

## Prometheus & Grafana
`cd monitoring/prometheus_grafana/prometheus_grafana`                                  
`ansible-playbook -i ../../../inventory playbooks/prometheus_grafana.yml --limit SERVERNAME`