#!/bin/bash
REDIS_CLI="/usr/local/softwares/redis/redis-standalone/src/redis-cli"

OPTIONS="-a 123456"

OPERATION="shutdown"

RUNNING_REDIS=$(ps aux | grep redis-server | grep -v grep)

# 如果 Redis 服务器正在运行，则关闭它
if [ -n "$RUNNING_REDIS" ]; then
    # 检查脚本文件是否存在
    if [ -f "${REDIS_CLI}" ]; then
        # 如果存在, 执行对应关闭Redis操作
        ${REDIS_CLI} ${OPTIONS} ${OPERATION}
        echo "Redis shutdown Successfully!"
    else
        echo "redis-cli不存在:${REDIS_CLI}"
    fi
else
    echo "No Redis Running! "
fi