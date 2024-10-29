#!/bin/bash

echo "==============="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global -add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update feed"

git push --set-upstream origin main


echo "==============="

#use git to run python and also send things back to the server.
#so whatever python files generates is going to be pushed back upstream to the main branch