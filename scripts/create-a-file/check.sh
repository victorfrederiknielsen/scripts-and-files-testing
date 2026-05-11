#!/bin/bash
if [ -f /tmp/hello.txt ]; then
  exit 0
fi

echo "The file /tmp/hello.txt does not exist."
exit 1
