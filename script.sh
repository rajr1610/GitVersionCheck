#!/bin/bash

# Change to the root directory of your Git repository
cd /path/to/your/repository

# Get the previous tag on the QA branch
previous_tag=$(git describe --tags --abbrev=0 QA)

# Extract the version number
version=$(echo "$previous_tag" | sed 's/v//; s/_.*//')

# Increment the version number
new_version="v.$((version + 1))_QA"

# Create the new tag
git tag "$new_version"
git push origin "$new_version"

