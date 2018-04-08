#!/bin/sh
BRANCH=$1
data="{\"source_type\": \"Branch\", \"source_name\": \"${BRANCH}\"}"
curl -H "Content-Type: application/json" --data "$data" -X POST https://registry.hub.docker.com/u/habx/ds-python/trigger/${TOKEN}/
