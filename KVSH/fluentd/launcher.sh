#! /bin/bash
DOCKER_BUILDKIT=0 docker compose -f /srv/docker-composes/filebeat/docker-compose.yml up -d filebeat --force-recreate
docker exec -it filebeat filebeat modules enable fortinet
docker cp fortinet.yml filebeat:/usr/share/filebeat/modules.d/
docker exec -it filebeat chmod go-w /usr/share/filebeat/modules.d/fortinet.yml
docker restart filebeat
