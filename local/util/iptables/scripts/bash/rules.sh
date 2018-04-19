#!/bin/bash
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

# 开启ssh连接的端口
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

# WEB server
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT

# tomcat server
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 8080 -j ACCEPT

# web test
iptables -A INPUT -p tcp --dport 8090 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 8090 -j ACCEPT

# ftp server
iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
iptables -A FORWARD -p tcp --dport 3306 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 3306 -j ACCEPT

# 允许icmp包通过, 允许ping
iptables -A OUTPUT -p icmp -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT

# 允许loopback(DNS正常关闭)
iptables -A INPUT -i lo -p all -j ACCEPT
iptables -A OUTPUT -o lo -p all -j ACCEPT

# 减少不安全连接
iptables -A INPUT -p tcp --sport 31337 -j DROP
iptables -A OUTPUT -p tcp --sport 31337 -j DROP

# 允许所有已经建立的和相关的连接

iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
