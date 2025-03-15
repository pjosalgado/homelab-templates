#!/bin/bash
if [ "$DUPLICATI__PARSED_RESULT" != "Success" ]; then
    curl -s -X POST -d "{\"content\":\"${DUPLICATI__PARSED_RESULT} on ${DUPLICATI__OPERATIONNAME} of [${DUPLICATI__backup_name}](http://$DOMAIN_NAME:8200/ngax/index.html#/log)\"}" -H "Content-Type: application/json" $DISCORD_WEBHOOK_SUCCESS_CHANNEL
else
    curl -s -X POST -d "{\"content\":\"${DUPLICATI__PARSED_RESULT} on ${DUPLICATI__OPERATIONNAME} of [${DUPLICATI__backup_name}](http://$DOMAIN_NAME:8200/ngax/index.html#/log)\"}" -H "Content-Type: application/json" $DISCORD_WEBHOOK_OTHERS_CHANNEL
fi
exit 0
