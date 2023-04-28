#!/bin/bash

read -p "Insert username ?: " elastic_user
read -p "Insert password ?: " password
curl --user elastic:Qw123456 -X POST "localhost:9200/_security/user/$elastic_user/_password?pretty" -H 'Content-Type: application/json' -d'
{
  "password" : "'$password'"
}
'

