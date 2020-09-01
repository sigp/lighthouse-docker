#!/bin/sh
#
# Starts a local fast-synced geth node.

if [ "$START_GETH" != "" ]; then
	exec geth --goerli --rpc --rpcaddr "0.0.0.0" --rpcvhosts=*
fi
