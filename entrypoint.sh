#!/bin/bash

set -euo pipefail

cd $(dirname $0)

while true
do
    ./a.out
    sleep 1
    echo "---------------------------------------"
done
