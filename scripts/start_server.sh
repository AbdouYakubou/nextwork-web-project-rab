#!/bin/bash
set -e

systemctl enable --now tomcat

# Only try httpd if installed; do not fail deployment if it's missing
if systemctl list-unit-files | grep -q '^httpd\.service'; then
  systemctl enable --now httpd
fi
