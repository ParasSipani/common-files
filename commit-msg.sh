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
  wget "https://raw.githubusercontent.com/ParasSipani/common-files/main/commit-msg"
  chmod +x commit-msg
  echo "done" 
done
