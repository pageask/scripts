#!/bin/bash -

workspace_dir=$1
branch=$2
project=$3
build_variant=$4

if [ $# != 4 ]
then
  echo "build_alps_workspace.sh workspace_dir branch project build_variant"
  exit
fi

if [ ! -d $workspace_dir ]
then
    echo "$workspace_dir does not exits !!!"
else
    cd $workspace_dir

    repo forall -c "git clean -fd"
    repo forall -c "git checkout ."
    repo sync
    repo forall -c "git clean -fd"
    repo forall -c "git checkout ."

    export LANG=en_US.UTF-8
    export LANGUAGE=en_US:en
    ./mk update-api
    ./mk -o=TARGET_BUILD_VARIANT=$build_variant $project n

    cp-alps-build-results.pl $branch $project $build_variant
fi
