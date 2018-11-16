FROM docker.elastic.co/beats/metricbeat:6.5.0

USER root

RUN yum -y install nc

RUN mkdir /var/log/metricbeat \
    && chown metricbeat /var/log/metricbeat

COPY entrypoint.sh /usr/local/bin/custom-entrypoint
RUN chmod +x /usr/local/bin/custom-entrypoint

USER metricbeat

ENTRYPOINT ["/usr/local/bin/custom-entrypoint"]
