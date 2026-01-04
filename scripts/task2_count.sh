#!/bin/bash

DIR=$1
EXT=$2

COUNT=$(find "$DIR" -type f -name "*.$EXT" | wc -l)

echo "Directory $DIR has $COUNT files with extension .$EXT."