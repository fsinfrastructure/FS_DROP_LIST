#!/bin/bash
rm drop*
spamhaus_drop_list.txt
wget https://www.spamhaus.org/drop/drop_v4.json
jq -r 'select(.type == null) | (.cidr)' drop_v4.json > spamhaus_drop_list.txt
