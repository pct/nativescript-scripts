#!/bin/sh

if [ $# -eq 0 ]; then
  echo 'Please input <project-name>'
  exit
fi

PROJECT_NAME=$1
BASEDIR=$(dirname "$0")

echo 'create project:' $PROJECT_NAME '...'
# new
tns create $PROJECT_NAME --ng
cp $BASEDIR/.gitignore $PROJECT_NAME

# use coffeescript and jade
cd $PROJECT_NAME
tns platform add ios
tns install coffeescript
tns install jade
tns install sass

git init; git add .; git commit -m 'init'


# done
echo "\n\ndone!"
