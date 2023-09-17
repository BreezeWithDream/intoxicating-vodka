#!/bin/bash
REDIS_SERVER="/usr/local/softwares/redis/redis-standalone/src/redis-server"

OPTIONS="/usr/local/softwares/redis/redis-standalone/redis.conf"

# RUNNING_REDIS=$(ps aux | grep redis-server | grep -v grep)

# 检查脚本文件是否存在
if [ -f "${REDIS_SERVER}" ]; then
    # 如果存在, 执行对应关闭Redis操作
    ${REDIS_SERVER} ${OPTIONS}

    # 获取脚本执行结果
    EXIT_CODE=$?
    if [ ${EXIT_CODE} -eq 0 ]; then
        echo "Redis-Server Started-Up Successfully! 😎"
    else
        echo "Redis-Server Started-Up Failed! 🥲"
    fi
else
    echo "redis-server 不存在:${REDIS_SERVER} 🫠"
fi
