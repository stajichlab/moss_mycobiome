#!/bin/bash

# Define the directory containing the files
directory="aspera_upload"

# Navigate to the directory
cd "$directory"

# Loop through the files and rename them
for file in *_*.fastq.gz; do
    # Remove the '_001' and any '_SXX_' patterns
    new_name=$(echo "$file" | sed -E 's/S[0-9]+_//; s/_001//')
    
    # Rename the file
    mv "$file" "$new_name"
done

