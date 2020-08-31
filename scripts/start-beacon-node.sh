#! /bin/bash
#
# Starts a beacon node.

if [ "$START_VALIDATOR" != "" ]; then
	ETH1_FLAG=--eth1
fi

if [ "$TESTNET" != "" ]; then
	TESTNET_PARAM="--testnet $TESTNET"
fi

if [ "$GRAFFITI" != "" ]; then
	GRAFFITI_PARAM="--graffiti $GRAFFITI"
fi

exec lighthouse \
	--debug-level $DEBUG_LEVEL \
	$TESTNET_PARAM \
	beacon_node \
	--eth1-endpoint $VOTING_ETH1_NODE \
	--http \
	--http-address 0.0.0.0 \
	--ws \
	--ws-address 0.0.0.0 \
	--max-skip-slots 700 \
	$GRAFFITI_PARAM \
	$ETH1_FLAG
