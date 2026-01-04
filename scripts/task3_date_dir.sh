#!/bin/bash

DIRNAME=$(date +%Y-%m-%d)

if [ -d "$DIRNAME" ]; then
  echo "Directory exists: $DIRNAME"
else
  mkdir "$DIRNAME"
  echo "Directory created: $DIRNAME"
fi