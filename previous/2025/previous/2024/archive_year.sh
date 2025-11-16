#!/bin/bash

# Path to the YAML file
CONFIG_FILE="_config.yml"

# Folder for the previous editions
PREV_DIR="previous"

# Extract conf_year from the YAML file
conf_year=$(grep 'conf_year:' "$CONFIG_FILE" | sed 's/[^0-9]*//g')

# Check if conf_year was successfully extracted
if [[ -z "$conf_year" ]]; then
  echo "Error: Could not extract conf_year from $CONFIG_FILE."
  exit 1
fi
echo "Conference Year is $conf_year"

# Backup the original config file
cp "$CONFIG_FILE" "${CONFIG_FILE}.bak"

# Temporarily set baseurl to the new folder
# Lixux
#sed -i "s|^baseurl:.*|baseurl: /$PREV_DIR/$conf_year|" "$CONFIG_FILE"

# Mac
sed -i '' "s|^baseurl:.*|baseurl: /$PREV_DIR/$conf_year|" "$CONFIG_FILE"

# Create the output directory using conf_year
OUTPUT_DIR="$PREV_DIR/$conf_year"
mkdir -p "$OUTPUT_DIR"

# Build the Jekyll site into the output directory
jekyll build --destination "$OUTPUT_DIR"

# Restore the original config file
mv "${CONFIG_FILE}" "$CONFIG_FILE-generated.bak"
mv "${CONFIG_FILE}.bak" "$CONFIG_FILE"

# Provide feedback
echo "Jekyll site built into $OUTPUT_DIR with baseurl set temporarily."
