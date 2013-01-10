#!/bin/bash -

if [ $# != 3 ]
then
  echo "sm-alps.sh project branch build_variant"
  exit
fi

export LANG=en_US.UTF-8
export LANGUAGE=en_US:en

project=$1
branch=$2
build_variant=$3

repo forall -c "git stash save"
repo sync
repo forall -c "git stash pop"
repo forall -c "git clean -fd"
./mk update-api
./mk -o=TARGET_BUILD_VARIANT=$build_variant $project n
cp-alps-build-results.pl $project $branch $build_variant
