FROM phpmyadmin/phpmyadmin:latest
MAINTAINER Cloud Mario <smcz@qq.com>

# install common packages
RUN apk add --update-cache bash sudo && \
	rm -rf /var/cache/apk/*

# install etcdctl
RUN curl -sSL -o /usr/local/bin/etcdctl http://sinacloud.net/hehe/etcd/etcdctl-v0.4.9 \
	&& chmod +x /usr/local/bin/etcdctl

# install confd
RUN curl -sSL -o /usr/local/bin/confd http://sinacloud.net/hehe/confd/confd-0.11.0-linux-amd64 \
	&& chmod +x /usr/local/bin/confd

ENV TZ "Asia/Shanghai"

ADD . /app

RUN chmod +x /app/bin/boot
RUN chmod +x /app/bin/clean


EXPOSE 8000

ENV PHP_UPLOAD_MAX_FILESIZE=256M \
    PHP_MAX_INPUT_VARS=4096

ENTRYPOINT ["/app/bin/boot"]
