#!/usr/bin/env bash 

curl -s http://www.gstatic.com/ipranges/cloud.json | python -c 'import json,sys;obj=json.load(sys.stdin);list = [str(i.get("ipv4Prefix", i.get("ipv6Prefix", ""))) for i in obj["prefixes"] if i.get("ipv4Prefix", i.get("ipv6Prefix", "")) != ""];list.sort();print "\n".join(list);' | sort > cloud.txt
