#! /bin/bash
#
# Starts a beacon node.

if [ "$START_VALIDATOR" != "" ]; then
	ETH1_FLAG=--eth1
fi

lighthouse \
	--debug-level $DEBUG_LEVEL \
	beacon_node \
	--eth1-endpoint $VOTING_ETH1_NODE \
	--network-dir /root/network \
	--http \
	--http-address 0.0.0.0 \
	--ws \
	--ws-address 0.0.0.0 \
	$ETH1_FLAG
