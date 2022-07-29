#!/bin/bash

# Adding a worktree.
if [[ -d /tmp/gh-pages ]]; then
  rm -rf /tmp/gh-pages
fi; git worktree add /tmp/gh-pages

# Building the mdbook
mdbook build

# Copying all the built files to /tmp
rm -rf /tmp/gh-pages/* && cp -rp ./book/* /tmp/gh-pages

# Push all the built files to github.
cd /tmp/gh-pages
git update-ref -d refs/heads/gh-pages
git add -A
git commit -m 'Deploying mdbook to GitHub pages.'
git push -f origin gh-pages
cd -
echo "done!"
