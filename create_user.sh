#!/bin/bash

read -p "Insert username ?: " elastic_user
read -p "Insert password ?: " password
read -p "Insert roles ?: "   roles

curl --user elastic:Qw123456 -XPOST "http://localhost:9200/_security/user/$elastic_user" -H 'Content-Type: application/json' -d'{  "password" : "'$password'",  "enabled": true,  "roles" : [ "'$roles'", "kibana_admin" ]}'
