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

if [ "$SEARCH_BLOCKS" != ""]; then
	SEARCH_BLOCKS_PARAM="--eth1-blocks-per-log-query $SEARCH_BLOCKS"
fi

if [ "$ENABLE_MONITORING_AUTO" != "" ]; then
	ENABLE_MONITORING_AUTO_FLAG="--validator-monitor-auto"
fi

if [ "$ENABLE_MONITORING_MANUAL" != "" ]; then
	ENABLE_MONITORING_MANUAL_PARAMS="--validator-monitor-pubkeys $ENABLE_MONITORING_MANUAL"
fi

if [ "$ENABLE_FULL_NETWORK_VIEW" != "" ]; then
	ENABLE_FULL_NETWORK_VIEW_PARAMS="--subscribe-all-subnets --import-all-attestations"
fi

exec lighthouse \
	--debug-level $DEBUG_LEVEL \
	--network $NETWORK \
	beacon_node \
	--eth1-endpoints $VOTING_ETH1_NODES \
	--http \
	--http-address 0.0.0.0 \
	$METRICS_PARAMS \
	$GRAFFITI_PARAM \
	$ETH1_FLAG \
	$SLASHER_FLAG \
	$SEARCH_BLOCKS_PARAM \
	$ENABLE_MONITORING_AUTO_FLAG \
	$ENABLE_MONITORING_MANUAL_PARAMS \
	$ENABLE_FULL_NETWORK_VIEW_PARAMS
