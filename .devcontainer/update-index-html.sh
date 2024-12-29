#!/bin/bash

INPUT_FILE="/workspaces/hyper-cards/Client/wwwroot/index_src.html"
OUTPUT_FILE="/workspaces/hyper-cards/Client/wwwroot/index.html"

# Generate a new GUID
GUID=$(uuidgen)

# Read the content of the input file
CONTENT=$(cat $INPUT_FILE)

# Replace the placeholder with the new GUID
UPDATED_CONTENT=${CONTENT//dynamic-guid/$GUID}

# Write the updated content to the output file
echo "$UPDATED_CONTENT" > $OUTPUT_FILE
