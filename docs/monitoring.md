## Version: 0.1
Still in development

-----------
## req 1

Directory structure

```
/monitoring
    ├── prometheus_grafana
    │   ├── docker-compose.yml
    │   ├── grafana_data
    │   ├── prometheus_config
    │   │   └── prometheus.yml
    │   └── prometheus_data
    └── prometheus_node_exporter
        └── docker-compose.yml

```

Directories with chmod 777
- /monitoring/prometheus_grafana/prometheus_data
- /monitoring/prometheus_grafana/grafana_data

-----------
## req 2
docker netowork called monitoring

```
docker network create monitoring
```
---------
## req 3
Newest docker compose installed from pip3
```
apt install python3-pip
pip3 install docker-compose
```