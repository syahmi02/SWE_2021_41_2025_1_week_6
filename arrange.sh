#!/bin/bash

FILES_DIR="./files"

for file in "$FILES_DIR"/*; do
    filename=$(basename "$file")
    first_char=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')
    mv "$file" "./$first_char/"
done