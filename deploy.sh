#!/bin/sh
hugo
cd public
git add .
git commit -m "new post"
git push
cd ..
git add .
git commit -m "new post"
