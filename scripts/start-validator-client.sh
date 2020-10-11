#! /bin/bash

DEFAULT_TESTNET=medalla

# Set testnet name
if [ "$TESTNET" = "" ]; then
	TESTNET=$DEFAULT_TESTNET
fi

if [ "$START_VALIDATOR" != "" ]; then
	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		--testnet $TESTNET \
		validator \
		--beacon-node http://beacon_node:5052
fi
