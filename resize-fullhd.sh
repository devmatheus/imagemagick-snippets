#!/bin/bash

# resizes only images greater than 1920x1080px

SRC_PATH="src"
OUTPUT_PATH="out"

IMAGE=""

echo ""

for FILENAME in `ls $SRC_PATH`
do
    IMAGE="$SRC_PATH/$FILENAME"

    `convert $IMAGE -resize 1920x1080\> -quality 85 $OUTPUT_PATH/$FILENAME`
    echo "OK - Imagem $OUTPUT_PATH/$FILENAME gerada"
done
