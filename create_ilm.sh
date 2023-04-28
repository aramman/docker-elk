#!/bin/bash

curl --user elastic:Qw123456 -X PUT "localhost:9200/_ilm/policy/wf-policy?pretty" -H 'Content-Type: application/json' -d'
{
  "policy": {
    "_meta": {
      "description": "WF policy",
      "project": {
        "name": "Dataplatform-ILM",
        "department": "Data-platform"
      }
    },
    "phases": {
      "hot": {
        "min_age": "0ms",
        "actions": {
          "set_priority": {
            "priority": 100
          }
        }
      },
      "delete": {
        "min_age": "90d",
        "actions": {
          "delete": {"delete_searchable_snapshot": true}
        }
      }
    }
  }
}
'


