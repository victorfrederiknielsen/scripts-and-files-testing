#!/bin/bash
mkdir -p /opt/app
cp /tmp/files/config.yaml /opt/app/config.yaml
sed -i 's/YOUR_NAME_HERE/Instruqt Learner/' /opt/app/config.yaml
