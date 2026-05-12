# Zabbix

Zabbix simple playground

***

### 1 - Create network

``` 
docker network create zabbix-net
```

### 2 - Generate web self-signed cert & agent psk
``` 
bash ./server/ssl/web/generate_web_certs.sh
bash ./agent/ssl/agent/generate_agent_psk.sh
```

### 3 - Run containers in the server and agent directories

``` 
docker compose up -d
```
