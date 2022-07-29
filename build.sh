#!/bin/bash

git worktree add /tmp/gh-pages
mdbook build
rm -rf /tmp/book/*
cp -rp book/* /tmp/book
cd /tmp/book
git add -A
git commit -m 'Deploy mdbook'
git push origin gh-pages
git update-ref -d refs/heads/gh-pages
cd -
echo "done!"
