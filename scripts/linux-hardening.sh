#!/bin/bash
# 🛡️ Linux Server Hardening Script
# Author: Suren Jewels

echo "🔧 Starting server hardening..."

# Disable unused services
systemctl disable telnet
systemctl disable ftp

# Enable firewall
ufw enable
ufw default deny incoming
ufw default allow outgoing

# Install auditd
apt-get install -y auditd
systemctl enable auditd

# Configure syslog forwarding
echo "*.* @logserver.local:514" >> /etc/rsyslog.conf
systemctl restart rsyslog

echo "✅ Server hardening complete."
