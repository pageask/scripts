#!/bin/bash -
# repo-sync.sh
#
# author : hzhiwen
# date   : 20120826
#

repo sync
while [ $? != 0 ]
do
  repo sync
done
