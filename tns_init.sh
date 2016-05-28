#!/bin/sh

if [ $# -eq 0 ]; then
  echo 'Please input <project-name>'
  exit
fi

PROJECT_NAME=$1

echo 'create project:' $PROJECT_NAME
# new
tns create $PROJECT_NAME --ng

# use coffeescript and jade
cd $PROJECT_NAME
tns platform add ios
tns install coffeescript
tns install jade
tns install sass

cd -

# done
echo 'done'
