#!/bin/bash
if [ ! -f /opt/app/config.yaml ]; then
  echo "Configuration file not found at /opt/app/config.yaml."
  exit 1
fi

if grep -q "YOUR_NAME_HERE" /opt/app/config.yaml; then
  echo "You still have the placeholder YOUR_NAME_HERE in the config. Replace it with your name."
  exit 1
fi

if grep -q "name:" /opt/app/config.yaml; then
  exit 0
fi

echo "The config file is missing the name field."
exit 1
