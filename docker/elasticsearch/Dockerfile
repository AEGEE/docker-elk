ARG ELK_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch-oss:${ELK_VERSION}

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

#these are needed but installed out of the box
#  unlike logstash, even if they're already 
#  installed it's bad to specify again
#RUN elasticsearch-plugin install ingest-user-agent
#RUN elasticsearch-plugin install ingest-geoip
