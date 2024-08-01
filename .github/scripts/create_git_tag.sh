#!/bin/bash

# Define the initial version components
MAJOR=1
MINOR=2
PATCH=7

# Get today's date in ddmmyyyy format
DATE=$(date +%d%m%Y)

# Function to increment the patch version
increment_patch_version() {
    PATCH=$((PATCH + 1))
}

# Create the initial tag
TAG="${MAJOR}.${MINOR}.${PATCH}.${DATE}"

# Check if the tag already exists and increment the patch version if it does
while git rev-parse "$TAG" >/dev/null 2>&1; do
    increment_patch_version
    TAG="${MAJOR}.${MINOR}.${PATCH}.${DATE}"
done

# Create the new tag
git tag $TAG

# Push the tag to the remote repository
git push origin $TAG

echo "Created and pushed tag: $TAG"