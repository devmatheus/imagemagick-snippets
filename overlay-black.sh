#!/bin/bash

SRC_PATH="src"
OUTPUT_PATH="out"

IMAGE=""

echo ""

for FILENAME in `ls $SRC_PATH`
do
    IMAGE="$SRC_PATH/$FILENAME"

    `convert $IMAGE -fill black -colorize 80% $OUTPUT_PATH/$FILENAME`
    echo "OK - Imagem $OUTPUT_PATH/$FILENAME gerada"
done
