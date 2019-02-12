FROM docker.elastic.co/beats/metricbeat:6.4.2

USER root

RUN yum -y install nc

RUN mkdir /var/log/metricbeat \
    && chown metricbeat /var/log/metricbeat \
    && usermod -a -G input metricbeat

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
RUN chmod go-w /usr/share/metricbeat/metricbeat.yml
COPY entrypoint.sh /usr/local/bin/custom-entrypoint
RUN chmod +x /usr/local/bin/custom-entrypoint

USER metricbeat

ENTRYPOINT ["/usr/local/bin/custom-entrypoint"]
