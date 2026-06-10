#!/bin/bash

DIRECTORIO="/tmp"

for archivo in $(find "$DIRECTORIO" -maxdepth 1 -name "user*" \( -type f -o -type l \)); do
	OBJETO="$archivo"

	if [ -h "$OBJETO" ]; then
		FUENTE=$(realpath "$OBJETO")
    
		if [ -e "$FUENTE" ]; then
			rm -f "$FUENTE"
	    	fi
    
    		rm -f "$OBJETO"

	elif [ -f "$OBJETO" ]; then
	    rm -f "$OBJETO"
	fi
done
