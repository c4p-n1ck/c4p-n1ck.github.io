#!/bin/bash

# Adding a worktree.
if [[ -d /tmp/mdbook ]]; then
  rm -rf /tmp/mdbook
fi; git worktree add -f /tmp/mdbook

# Building the mdbook
mdbook build

# Copying all the built files to /tmp
rm -rf /tmp/mdbook/* && cp -rp ./book/* /tmp/mdbook

cd /tmp/mdbook
exit

git add -A
git commit -m 'Deploy mdbook'
git push origin gh-pages
git update-ref -d refs/heads/gh-pages
cd -
echo "done!"
