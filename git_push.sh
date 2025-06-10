#!/bin/bash

# Exit immediately if a command fails
set -e
git init
# Stage all changes except what's in .gitignore
git add .

# Optional: check if there's anything to commit
if git diff --cached --quiet; then
    echo "No changes to commit."
    exit 0
fi

# Commit with current timestamp
COMMIT_MESSAGE="Update on $(date +"%Y-%m-%d %H:%M:%S")"
git commit -m "$COMMIT_MESSAGE"

# Push to the current branch on origin
git push origin HEAD

echo "✅ Code pushed to GitHub successfully!"