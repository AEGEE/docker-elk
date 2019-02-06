#!/bin/bash

#according to https://github.com/docker-library/elasticsearch/issues/111
# more in detail https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-cli-run-prod-mode

sudo sysctl -w vm.max_map_count=262144
