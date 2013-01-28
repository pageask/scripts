#!/bin/bash -

if [ $# != 3 ]
then
  echo "gen-version.sh branch build_variant date_time"
  exit
fi

branch=$1
build_variant=$2
date_time=$3

echo
echo "package com.sg.sgservices;"
echo

echo "public class Version {"
echo "    public static final String BUILD_BRANCH      = \"$branch\";"
echo "    public static final String BUILD_VARIANT     = \"$build_variant\";"
echo "    public static final String BUILD_DATE_TIME   = \"$date_time\";"
echo "}"
