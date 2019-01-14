FROM debian:stretch
LABEL maintainer="Matthias Blaser <mb@emgag.com>"

ARG VERSION

RUN apt-get update && apt-get install -y \
        curl \
        gnupg \
        mysql-client \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sS http://repo.proxysql.com/ProxySQL/repo_pub_key | apt-key add - \
    && echo "deb http://repo.proxysql.com/ProxySQL/proxysql-1.4.x/stretch/ ./" \
        | tee /etc/apt/sources.list.d/proxysql.list \
    && apt-get update && apt-get install -y \
        proxysql=${VERSION} \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

VOLUME /var/lib/proxysql

EXPOSE 6032
EXPOSE 6033
EXPOSE 6080

ENTRYPOINT ["proxysql", "-f"]

