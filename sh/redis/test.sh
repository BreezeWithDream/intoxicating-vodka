#!/bin/bash

working_dir="/usr/local/softwares/redis/redis-standalone/src/"

redis_cli="redis-cli"

${working_dir}${redis_cli} shutdown

echo "aaa"