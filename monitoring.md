* ansible-playbook -i ../inventory playbooks/prometheus_node.yml --limit nas

* Go to http://<<ip>>:9100/metrics and check if prometheus exposes metrics
* Go to http://<<ip>>:81/containers/ and check if Cadvisor exposes containers data