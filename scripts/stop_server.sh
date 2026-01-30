#!/bin/bash
set -e

# Stop Tomcat safely
systemctl stop tomcat || true

# Stop Apache safely (only if it exists)
if systemctl list-unit-files | grep -q '^httpd\.service'; then
  systemctl stop httpd || true
fi

exit 0
