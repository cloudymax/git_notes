#!/bin/bash

url=$3
export GIT_CLONE_USERNAME=$1
export GIT_CLONE_TOKEN=$2
export GIT_CLONE_URL=$( echo "$url" |sed 's/https:\/\///g')

cmd="git clone https://$GIT_CLONE_USERNAME:$GIT_CLONE_TOKEN@$GIT_CLONE_REPO"
$cmd
