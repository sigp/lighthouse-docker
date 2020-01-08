#!/bin/sh
#
# Starts a local fast-synced geth node.

if [ "$START_GETH" != "" ]; then
	geth --goerli --rpc --rpcaddr "0.0.0.0" --rpchosts=*
fi
