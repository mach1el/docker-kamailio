FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install -y --no-install-recommends git curl wget \
    ca-certificates gnupg2 dirmngr && rm -rf /var/lib/apt/lists

RUN apt-get update && apt-get install -yqq net-tools kamailio kamailio-autheph-modules \ 
	kamailio-berkeley-bin kamailio-berkeley-modules kamailio-json-modules kamailio-mysql-modules \ 
	kamailio-outbound-modules kamailio-perl-modules kamailio-postgres-modules kamailio-presence-modules \ 
	kamailio-python-modules kamailio-python3-modules kamailio-ruby-modules kamailio-systemd-modules \ 
	kamailio-tls-modules kamailio-utils-modules kamailio-websocket-modules \ 
	&& rm -rf /var/lib/apt/lists

EXPOSE 5060/udp

COPY kamailio /etc/default/
COPY kamailio.cfg /etc/kamailio/
RUN touch /var/log/kamailio.log
RUN echo "local0.*              -/var/log/kamailio.log" >> /etc/rsyslog.conf

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]