#!/bin/bash
NACOS_SERVER="/usr/local/softwares/nacos/bin/startup.sh"

OPTIONS=" -m standalone"

# RUNNING_REDIS=$(ps aux | grep redis-server | grep -v grep)

# 检查脚本文件是否存在
if [ -f "${NACOS_SERVER}" ]; then
    # 如果存在, 执行对应关闭Redis操作
    sh ${NACOS_SERVER} ${OPTIONS}

    # 获取脚本执行结果
    EXIT_CODE=$?
    if [ ${EXIT_CODE} -eq 0 ]; then
        echo "Nacos-Server Standalone Mode Started-Up Successfully! 😎"
    else
        echo "Nacos-Server Standalone Mode Started-Up Failed! 🥲"
    fi
else
    echo "Nacos-Server doesn't exist: ${NACOS_SERVER} 🫠"
fi