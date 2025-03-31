#!/usr/bin/env bash
#set -euo pipefail

__validator_flag=""
__node_key_file=""

if [ -n "${NODE_KEY_FILE}" ]; then
        __validator_flag="--validator"
        __node_key_file="--node-key-file ${NODE_KEY_FILE}"
fi

# Get public IP address.
__public_ip=$(curl -s ifconfig.me/ip)
echo "Public ip: ${__public_ip}"

exec "$@" ${__validator_flag} ${__node_key_file} --public-addr /ip4/${__public_ip} ${EXTRAS}
