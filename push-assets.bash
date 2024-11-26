#!/usr/bin/env bash

set -uex
set -o pipefail

git config user.name 'GitHub Action'
git config user.email 'action@github.com'
git add assets
# for debug
git status
git diff --staged --quiet assets || {
	git commit -m 'Update metrics [skip ci]'
	git push
}
