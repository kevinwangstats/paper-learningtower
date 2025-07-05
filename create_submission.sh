#!/bin/bash

# A shell script to package specified files and directories for submission.
#
# INSTRUCTIONS:
# 1. Save this script as a file, for example, `create_submission.sh`.
# 2. Place it in the main directory of your project.
# 3. Open your terminal and navigate to that directory.
# 4. Make the script executable by running: chmod +x create_submission.sh
# 5. Run the script: ./create_submission.sh

# --- Configuration ---
# Set the desired name for the output zip file.
OUTPUT_FILENAME="Rjournal_submission_20250704.zip"

# --- Script Logic ---

# Inform the user that the process is starting.
echo "Starting the archival process..."

# To avoid including an old archive within a new one,
# we first check for and delete any existing zip file with the same name.
if [ -f "$OUTPUT_FILENAME" ]; then
    echo "Found an existing archive. Removing '$OUTPUT_FILENAME' before creating a new one."
    rm "$OUTPUT_FILENAME"
fi

# Create the zip archive.
# The 'zip' command is used with the '-r' flag to recursively include directories.
# All file patterns and directory names are listed after the archive name.
echo "Creating new archive: '$OUTPUT_FILENAME'..."
zip -r "$OUTPUT_FILENAME" \
    *.Rmd \
    *.tex \
    *.html \
    *.pdf \
    *.R \
    *.bib \
    Rjournal.sty \
    rjournal.css \
    rjournal.csl \
    motivation-letter.pdf \
    data \
    figures \
    scripts

# --- Verification ---
# Check the exit code of the last command (`zip`).
# An exit code of 0 means it was successful.
if [ $? -eq 0 ]; then
    echo ""
    echo "----------------------------------------"
    echo "✅ Success!"
    echo "Archive '$OUTPUT_FILENAME' has been created."
    echo "You can now submit this file."
    echo "----------------------------------------"
else
    echo ""
    echo "----------------------------------------"
    echo "❌ Error!"
    echo "The zip command failed. Please review the output above for any errors."
    echo "Ensure that the files and directories you want to zip exist in this location."
    echo "----------------------------------------"
fi
