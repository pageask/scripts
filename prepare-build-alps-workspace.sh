#!/bin/bash -

echo "*******************"
echo "    build begin    "
echo "*******************"

branch=$1
project=$2
build_variant=$3
workspace_dir=$4
src_dir=$5

if [ $# -lt 3 ]
then
    echo "prepare-build-alps-workspace.sh branch project build_variant [workspace_dir src_dir]"
    exit
fi

if [ "$workspace_dir" == "" ]
then
    workspace_dir="${HOME}/projects/release/${branch}"
fi

if [ "$src_dir" == "" ]
then
    src_dir="${HOME}/zips/mtk"
fi
case "$branch" in
    *a02-77*):
        src_dir="${src_dir}/a02-77/alps";;
    *gt-i9300-1023*):
        src_dir="${src_dir}/alps_1023/alps";;
    *gt-i9100*):
        src_dir="${src_dir}/mtk75_ics/alps";;
    *):
        src_dir="${src_dir}/a02-77/alps";;
esac

#echo $branch
#echo $project
#echo $build_variant
#echo $workspace_dir
#echo $src_dir
#exit

prepare-alps-workspace.sh $workspace_dir $branch $src_dir

build-alps-workspace.sh $workspace_dir $branch $project $build_variant

echo "*******************"
echo "    build end    "
echo "*******************"
