#!/bin/sh
#
# Automatically adds branch name and branch description to every commit message.
#

# creating a global git hooks folder and setting up to default git config path.
# In case you want to create custom commit-msg hook, remove the existing commit-msg and add yours
# Running this batch of commands will set up the git hooks folder for all the future repositories you check out

git config --global init.templatedir '~/.git-templates'
mkdir -p ~/.git-templates/hooks
cd ~/.git-templates/hooks
rm commit-msg
wget "https://raw.githubusercontent.com/ParasSipani/common-files/main/commit-msg"
chmod a+x ~/.git-templates/hooks/commit-msg

# this batch of commands will find all the git repositories checked out in your machine and reinitialize the git repository bringing in the hooks configured above

find $HOME -type d -name ".git" |while read fname; do
  echo "$fname"
  cd $fname
  cd ..
  pwd
  git init
  echo "done" 
done
