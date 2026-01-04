#!/bin/bash

THRESHOLD=10

FREE=$(df / | tail -1 | awk '{print $4}')
TOTAL=$(df / | tail -1 | awk '{print $2}')

PERCENT=$(( FREE * 100 / TOTAL ))

if [ "$PERCENT" -lt "$THRESHOLD" ]; then
    echo "WARNING: Free disk space is below $THRESHOLD%"
else
    echo "Disk space is OK. Free: $PERCENT%"
fi