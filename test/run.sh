#!/bin/sh
cd $(dirname $0)

cd ../say-hello

mvn clean package
ret=$?
if [ $ret -ne 0 ]; then
  exit $ret
fi
rm -rf target

mvn clean compile
ret=$?
if [ $ret -ne 0 ]; then
  exit $ret
fi
rm -rf target

cd ../user

mvn clean package
ret=$?
if [ $ret -ne 0 ]; then
  exit $ret
fi
rm -rf target

mvn clean compile
ret=$?
if [ $ret -ne 0 ]; then
  exit $ret
fi
rm -rf target


exit
