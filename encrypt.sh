#!/bin/bash
SEARCH_FOLDER=$1
PASSWORD=$2

echo "Searching into $SEARCH_FOLDER"

find "$SEARCH_FOLDER" -type f -exec sh -c '
	cd "$(dirname "$1")"
	echo "Executing zip command with password: '"$PASSWORD"'"
	zip -r -P '"$PASSWORD"' "$(basename "$1").zip" "$(basename "$1")"
	rm "$(basename "$1")"
' _ {} \;
