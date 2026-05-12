#!/bin/bash

# 1 - GENERATE CA PRIVATE KEY & CERTIFICATE
openssl genrsa -out ./ca.key 4096
openssl req -x509 -new -nodes -key ./ca.key -sha256 -days 365 -out ./ca.crt -subj "/CN=zabbixWebCA"

# 2 - GENERATE PRIVATE KEY, CSR & CERTIFICATE
openssl dhparam -out ./dhparam.pem 2048
openssl genrsa -out ./ssl.key 4096
openssl req -new -key ./ssl.key -out ./ssl.csr -subj "/CN=localhost"
openssl x509 -req -in ./ssl.csr -CA ./ca.crt -CAkey ./ca.key -CAcreateserial -out ./ssl.crt -days 365 -sha256
