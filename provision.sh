#!/bin/bash

sudo yum install wget -y

# install influx
wget https://dl.influxdata.com/influxdb/releases/influxdb-1.8.10.x86_64.rpm
sudo yum localinstall influxdb-1.8.10.x86_64.rpm -y
sudo systemctl daemon-reload
sudo systemctl start influxdb
sudo systemctl enable influxdb
sudo systemctl status influxdb
influxd version

# install telegraf
wget https://dl.influxdata.com/telegraf/releases/telegraf-1.20.4-1.x86_64.rpm
sudo yum localinstall telegraf-1.20.4-1.x86_64.rpm -y
sudo systemctl daemon-reload
sudo systemctl start telegraf
sudo systemctl enable telegraf
sudo systemctl status telegraf

# install grafana
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-8.5.15-1.x86_64.rpm
sudo yum localinstall grafana-enterprise-8.5.15-1.x86_64.rpm -y
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
sudo systemctl status grafana-server