#!/bin/sh

if [ $# -eq 0 ]; then
  echo 'Please input <project-name>'
  exit
fi

PROJECT_NAME=$1
BASEDIR=$(dirname "$0")

# new project
echo 'create project:' $PROJECT_NAME '...'
tns create $PROJECT_NAME
# clean
cd $PROJECT_NAME
rm -rf *.js *.css *.xml
cd -

# copy
cp $BASEDIR/.gitignore $PROJECT_NAME
cp -rpf $BASEDIR/scripts $PROJECT_NAME
cp -rpf $BASEDIR/app/* $PROJECT_NAME/app/

# use coffeescript and jade
cd $PROJECT_NAME
tns platform add ios
tns install jade
tns install sass
tns install coffeescript

git init; git add .; git commit -m 'init'


# done
echo "\n\ndone!"
