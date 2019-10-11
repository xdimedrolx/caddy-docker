FROM abiosoft/caddy:1.0.3-no-stats

EXPOSE 8080 80 443 2015

WORKDIR /app

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait

ADD ./Caddyfile /etc/caddy/Caddyfile
ADD ./run.sh /run.sh

RUN chmod 755 /run.sh

ENTRYPOINT /run.sh
