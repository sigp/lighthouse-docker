#!/bin/sh
#
# Starts a local fast-synced geth node.

if [ "$START_GETH" != "" ]; then
	geth --rpc --rpcaddr "0.0.0.0"
fi
