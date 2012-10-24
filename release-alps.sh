#!/bin/bash -

export LANG=en_US.UTF-8
export LANGUAGE=en_US:en

project=$1
branch=$2

repo forall -c "git stash save"
repo sync
repo forall -c "git stash pop"
./mk update-api
./mk -o=TARGET_BUILD_VARIANT=user $project n
cp-alps-build-results.pl $project $branch
