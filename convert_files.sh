#!/bin/bash

file_array=("python-original.svg" "fastapi-original.svg" "spring-original-wordmark.svg")

for file in "${file_array[@]}"; do

    echo "Converting: $file"
    new_filename="${file/svg/webp}"
    echo $new_filename
    echo ""

done
