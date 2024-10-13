#!/usr/bin/env bash
#set -euo pipefail

__validator_flag=""
__node_key_file=""

if [ -n "${NODE_KEY_FILE}" ]; then
        __validator_flag="--validator"
        __node_key_file="--node-key-file ${NODE_KEY_FILE}"
fi

id


exec "$@" ${__validator_flag} ${__node_key_file} ${EXTRAS}
