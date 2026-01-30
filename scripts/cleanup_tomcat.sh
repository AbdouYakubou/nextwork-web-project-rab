#!/bin/bash
set -e

APP=nextwork-web-project
WEBAPPS=/var/lib/tomcat/webapps

echo "Cleaning old Tomcat deployment..."

# Remove from real Tomcat webapps dir
rm -rf "$WEBAPPS/$APP" "$WEBAPPS/$APP.war" || true

# Remove from symlink path too (safe)
rm -rf "/usr/share/tomcat/webapps/$APP" "/usr/share/tomcat/webapps/$APP.war" || true

exit 0
