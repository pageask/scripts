#!/bin/bash -
# repo-sync.sh
#
# author : hzhiwen
# date   : 20120826
#

repo sync
while [ $? ne 0 ]
then
  repo sync
do
