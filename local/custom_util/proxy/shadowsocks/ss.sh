#!/bin/bash
SHADOWSOCK=$(dirname $0)
nohup ss-local -c $SHADOWSOCK/config.json  > $SHADOWSOCK/shadowsocks.out 2>&1 & 

