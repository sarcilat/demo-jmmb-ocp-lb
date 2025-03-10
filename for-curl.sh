#!/bin/bash

URL=""

for i in {1..50}; do
    echo "Call #$i to URL..."
    curl -s "$URL" > /dev/null
    sleep 0.5
done

echo "Process complete!"