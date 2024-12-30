#!/bin/bash

# Generate a new GUID
GUID=$(uuidgen)

# Read the content of the input file
CONTENT=$(cat "$INPUT_FILE")

# Replace all instances of 'dynamic-guid' with the new GUID
UPDATED_CONTENT=$(echo "$CONTENT" | sed "s/dynamic-guid/$GUID/g")

# Write the updated content to the output file
echo "$UPDATED_CONTENT" > "$OUTPUT_FILE"
