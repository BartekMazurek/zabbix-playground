FROM zabbix/zabbix-web-nginx-pgsql:latest

USER root

COPY ./ssl/web/ssl.crt /etc/ssl/nginx/ssl.crt
COPY ./ssl/web/ssl.key /etc/ssl/nginx/ssl.key
COPY ./ssl/web/dhparam.pem /etc/ssl/nginx/dhparam.pem

RUN chmod 644 /etc/ssl/nginx/ssl.crt
RUN chmod 644 /etc/ssl/nginx/ssl.key
RUN chmod 644 /etc/ssl/nginx/dhparam.pem

RUN chown nginx:nginx /etc/ssl/nginx/ssl.crt
RUN chown nginx:nginx /etc/ssl/nginx/ssl.key
RUN chown nginx:nginx /etc/ssl/nginx/dhparam.pem

USER zabbix