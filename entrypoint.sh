#!/bin/sh
set -e
sed \
  -e "s|baseURL: \"URL\"|baseURL: \"${AI_BASE_URL}\"|" \
  -e "s|apiKey: \"API-KEY\"|apiKey: \"${AI_API_KEY}\"|" \
  -e "s|model: \"MODEL\"|model: \"${AI_MODEL}\"|" \
  /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html

exec nginx -g "daemon off;"
