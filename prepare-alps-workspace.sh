#!/bin/bash -

workspace_dir=$1
branch=$2
src_dir=$3

#echo $workspace_dir
#echo $branch
#echo $src_dir
#exit

if [ $# != 3 ]
then
  echo "prepare-alps-workspace.sh workspace_dir branch src_dir"
  exit
fi

if [ -d $workspace_dir ]
then
    echo "$workspace_dir already exits !!!"
else
    mkdir -p $workspace_dir
    cd $workspace_dir

    repo-alps.sh $branch
    repo-sync.sh

    src_dir="${src_dir}/*"
    cp -r -n $src_dir $workspace_dir
fi
