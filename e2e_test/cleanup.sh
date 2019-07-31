#!/usr/bin/env bash

echo "Start cleanup.sh!"

# Delete clusters
TEST_FILE_DIRECTORY=$(dirname "$0")

minikube delete -p rekcurd-test1

rm -f ${KUBE_CONFIG_PATH1:-/tmp/kube-config-path1}
rm -f ${TEST_FILE_DIRECTORY}/*.test.db
rm -f ~/.rekcurd/db/*.test.db


# Done
echo "Finish cleanup.sh!"
