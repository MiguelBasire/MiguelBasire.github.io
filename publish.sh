#! /bin/bash

echo "Compiling ..."
rm -rf output/*
jbake -b 
[ $? -ne 0 ] && exit 1

echo "Publishing ..."
git checkout master && cp -rf output/* ./ 

[ $? -ne 0 ] && echo "Failure !!!" || exit 1

git add .

git commit
