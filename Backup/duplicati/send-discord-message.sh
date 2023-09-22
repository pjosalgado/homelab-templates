#!/bin/bash
curl -s -X POST -d "{\"content\":\"${DUPLICATI__PARSED_RESULT} on ${DUPLICATI__OPERATIONNAME} of ${DUPLICATI__backup_name}\"}" -H "Content-Type: application/json" ${DISCORD_WEBHOOK}
exit 0
