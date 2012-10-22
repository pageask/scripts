#!/bin/bash -

repositories_url="ssh://pageask@192.168.1.158/home/pageask/repositories";
manifests_url="$repositories_url/alps/manifests.git";
branch=$1;
repo_url="$repositories_url/git-repo.git";

repo init -u $manifests_url \
          -b $branch \
          --repo-url=$repo_url;
