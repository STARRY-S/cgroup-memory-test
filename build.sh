#!/bin/bash

cd $(dirname 0)

set -euo pipefail

docker build --tag hxstarrys/cgroup:latest .

docker push hxstarrys/cgroup:latest
