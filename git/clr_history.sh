#!/usr/bin/env bash

git checkout --orphan new
git add .
git commit -m "new branch new commit"
git branch -D main
git branch -m main
git push origin main -f
