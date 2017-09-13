#!/bin/sh

set -e
GITURL=`git config remote.origin.url`
cd dist
rm -rf .git/
git init
git remote add origin $GITURL
echo 'www.ramraj.xyz' > CNAME
git add .
git commit -am "deploy"
echo 'Pushing to ' $GITURL
git push origin master:gh-pages --force
