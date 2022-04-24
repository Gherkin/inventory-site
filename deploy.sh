#!/bin/bash
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

aws s3 sync --exclude '.git/*' --exclude 'deploy.sh' "$SCRIPTPATH" s3://hector.wtf/inv/
