#! /bin/bash
#
# Starts a beacon node.

DEFAULT_NETWORK=mainnet

if [ "$START_VALIDATOR" != "" ]; then
	ETH1_FLAG=--eth1
fi

if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi

if [ "$ENABLE_METRICS" != "" ]; then
	METRICS_PARAMS="--metrics --metrics-address 0.0.0.0 "
fi

if [ "$GRAFFITI" != "" ]; then
	GRAFFITI_PARAM="--graffiti $GRAFFITI"
fi

if [ "$START_SLASHER" != "" ]; then
	SLASHER_FLAG="--slasher"
fi

if [ "$SEARCH_BLOCKS" != "" ]; then
	SEARCH_BLOCKS_PARAM="--eth1-blocks-per-log-query $SEARCH_BLOCKS"
fi


exec lighthouse \
	--debug-level $DEBUG_LEVEL \
	--network $NETWORK \
	beacon_node \
	--eth1-endpoints $VOTING_ETH1_NODES \
	--http \
	--http-address 0.0.0.0 \
	$METRICS_PARAMS \
	--ws \
	--ws-address 0.0.0.0 \
	--max-skip-slots 700 \
	$GRAFFITI_PARAM \
	$ETH1_FLAG \
	$SLASHER_FLAG \
	$SEARCH_BLOCKS_PARAM
