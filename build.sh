#!/bin/bash

# Adding a worktree.
if [[ -d /tmp/mdbook ]]; then
  rm -rf /tmp/mdbook
fi; git worktree add -f /tmp/mdbook

# Building the mdbook
mdbook build

# Copying all the built files to /tmp
rm -rf /tmp/mdbook/* && cp -rp ./book/* /tmp/mdbook

# Push all the built files to github.
cd /tmp/mdbook
git add -A
git commit -m 'Deploying mdbook to GitHub pages.'
git push origin gh-pages
git update-ref -d refs/heads/gh-pages
cd -
echo "done!"
