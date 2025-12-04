#!/bin/bash
# Helper script to set up GitHub token authentication

echo "To fix the authentication issue, you need a GitHub Personal Access Token."
echo ""
echo "1. Go to: https://github.com/settings/tokens"
echo "2. Click 'Generate new token' -> 'Generate new token (classic)'"
echo "3. Give it a name and select 'repo' scope"
echo "4. Click 'Generate token' and copy it"
echo ""
read -p "Enter your GitHub Personal Access Token: " TOKEN

if [ -z "$TOKEN" ]; then
    echo "Error: No token provided"
    exit 1
fi

git remote set-url origin https://${TOKEN}@github.com/samronin24/statsMemeChallenge.git
echo ""
echo "Remote URL updated! Now try: git push"

