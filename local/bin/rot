#!/bin/sh

rotation=$((${1:-13} % 26))
padding=$(printf "%${rotation}s" "" | tr ' ' '\001')
tr "${padding}a-z" "a-za-z" |
tr "${padding}A-Z" "A-ZA-Z"

