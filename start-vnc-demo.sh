#!/bin/bash

echo "启动Docker VNC容器..."
docker-compose up -d

echo "等待VNC服务器启动 (5秒)..."
sleep 5

echo "============================================"
echo "Docker VNC服务器信息:"
echo "VNC地址: localhost:5901"
echo "VNC密码: vncpassword"
echo "============================================"

echo "启动noVNC代理连接到Docker VNC服务器..."
./utils/novnc_proxy --vnc localhost:5901

# 待会儿清理
# docker-compose down 