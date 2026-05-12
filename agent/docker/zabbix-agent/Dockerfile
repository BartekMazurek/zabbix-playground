FROM zabbix/zabbix-agent:latest

RUN apk update -y && apk upgrade -y

USER root

COPY ./ssl/agent/zabbix_agent.psk /var/lib/zabbix/enc/zabbix_agent.psk

RUN chmod 600 /var/lib/zabbix/enc/zabbix_agent.psk
RUN chown zabbix:zabbix /var/lib/zabbix/enc/zabbix_agent.psk

USER zabbix