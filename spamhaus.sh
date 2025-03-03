#!/bin/bash
rm drop*
wget https://www.spamhaus.org/drop/drop_v4.json
jq -r 'select(.type == null) | (.cidr)' drop_v4.json >> drop.txt
