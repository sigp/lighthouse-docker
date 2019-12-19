#! /bin/bash
#
# Starts a beacon node.

lighthouse \
	--debug-level $DEBUG_LEVEL \
	beacon_node \
	--eth1-endpoint $VOTING_ETH1_NODE \
	--http \
	--http-address 0.0.0.0 \
	--ws \
	--ws-address 0.0.0.0 \
	--eth1
