#! /bin/bash

if [ "$TESTNET" != "" ]; then
	TESTNET_PARAM="--testnet $TESTNET"
fi

if [ "$START_VALIDATOR" != "" ]; then
	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		$TESTNET_PARAM \
		validator \
		--auto-register \
		--server http://beacon_node:5052
fi
