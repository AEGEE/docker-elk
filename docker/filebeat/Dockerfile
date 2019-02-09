FROM docker.elastic.co/beats/filebeat:6.4.2

USER root

RUN mkdir /var/log/metricbeat \
    && chown filebeat /var/log/metricbeat

RUN yum -y install nc

COPY filebeat.yml /usr/share/filebeat/filebeat.yml
RUN chmod go-w /usr/share/filebeat/filebeat.yml

COPY entrypoint.sh /usr/local/bin/custom-entrypoint
RUN chmod +x /usr/local/bin/custom-entrypoint

USER filebeat

ENTRYPOINT ["/usr/local/bin/custom-entrypoint"]
