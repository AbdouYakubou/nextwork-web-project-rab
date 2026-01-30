#!/bin/bash
set -e

APP=nextwork-web-project
WEBAPPS=/var/lib/tomcat/webapps

echo "Cleaning old Tomcat deployment..."
rm -rf "$WEBAPPS/$APP" "$WEBAPPS/$APP.war"

# also clean via symlink path (safe)
rm -rf "/usr/share/tomcat/webapps/$APP" "/usr/share/tomcat/webapps/$APP.war" || true
