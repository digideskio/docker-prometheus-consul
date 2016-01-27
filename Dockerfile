FROM prom/prometheus:latest

MAINTAINER Emerging Technology Advisors (ops@eta.im)

RUN apk add --update bash

RUN mkdir -p /prometheus-consul/config.d

ADD config/ /prometheus-consul/config.d/
ADD launch.sh /prometheus-consul/launch.sh

EXPOSE 9090

CMD ["/prometheus-consul/launch.sh"]
