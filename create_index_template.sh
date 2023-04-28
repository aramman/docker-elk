#!/bin/bash

curl --user elastic:Qw123456 -X PUT "localhost:9200/_index_template/wf-filebeat?pretty" -H 'Content-Type: application/json' -d'
{
  "index_patterns": ["filebeat-*"],
  "template": {
    "settings": {
    "number_of_replicas": "0",
    "index.lifecycle.name": "wf_ilm"
    }
  }
}
'

