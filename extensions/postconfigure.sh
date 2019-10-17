#!/bin/sh

echo "========== Executing postconfigure.sh =========="

echo " Sleep 10 in postconfigure"

for ((i=0;i<10;i++)); do echo ${i}; sleep 1; done

echo " executing embedded server and postconfigure.cli file"
/opt/eap/bin/jboss-cli.sh --file=${JBOSS_HOME}/extensions/postconfigure.cli

echo " Sleep 10 in postconfigure after execute embedded server"
for ((i=0;i<10;i++)); do echo ${i}; sleep 1; done

echo "========== END postconfigure.sh =========="