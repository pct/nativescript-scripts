#!/bin/sh

if [ $# -eq 0 ]; then
  echo 'Please input <project-name>'
  exit
fi

PROJECT_NAME=$1
BASEDIR=$(dirname "$0")

npm install -g @vue/cli @vue/cli-init

# new project
echo 'create project:' $PROJECT_NAME '...'
vue init nativescript-vue/vue-cli-template $PROJECT_NAME
# clean
cd $PROJECT_NAME
yarn install

# copy
cp $BASEDIR/.gitignore $PROJECT_NAME
cp -rpf $BASEDIR/scripts $PROJECT_NAME
#cp -rpf $BASEDIR/app/* $PROJECT_NAME/app/

# use coffeescript and jade
#tns platform add ios
#tns install jade
#tns install sass
#
git init; git add .; git commit -m 'init'


# done
echo "\n\ndone!"
