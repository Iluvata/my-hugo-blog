#!/bin/sh
hugo
cd public
git add .
git commit -m "new post automate deploy on $(date -d 'now')"
git push
cd ..
git add .
git commit -m "new post automate deploy on $(date -d 'now')"
git push
