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
cp -rpf $BASEDIR/scripts $PROJECT_NAME
cp -rpf $BASEDIR/app/* $PROJECT_NAME
rm -rf $PROJECT_NAME/app.com*

# use coffeescript and jade
cd $PROJECT_NAME
tns platform add ios
tns install jade
tns install sass

git init; git add .; git commit -m 'init'


# done
echo "\n\ndone!"
