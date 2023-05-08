#!/bin/sh
echo "Date created: $(date)" > /logi/info.log
echo "Available memory: $(free -h | awk '/Mem/{print $7}')B" >> /logi/info.log
