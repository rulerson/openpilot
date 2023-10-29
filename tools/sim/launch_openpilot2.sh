#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null && pwd)"
OPENPILOT_DIR="$(dirname $(dirname $DIR))"

export PYTHONPATH=$OPENPILOT_DIR:$PYTHONPATH

export PASSIVE="0"
export NOBOARD="1"
export SIMULATION="1"
export SKIP_FW_QUERY="1"
export FINGERPRINT="HONDA CIVIC 2016"
export LOGPRINT="debug"
export BLOCK="loggerd,encoderd,micd"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd ../../selfdrive/manager && python3 ./manager.py
