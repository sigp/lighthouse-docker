#! /bin/bash
#
# Waits until the `~/.lighthouse/validators` directory contains $MIN_VALIDATOR_COUNT
# files (we assume that each file is a validator directory) before starting the
# validator client.

while [ $(ls -1 ~/.lighthouse/validators | wc -l) != $VALIDATOR_COUNT ]
do
	echo "Waiting for $VALIDATOR_COUNT validators."
	sleep 1
done

lighthouse \
	--debug-level $DEBUG_LEVEL \
	validator \
	--server http://beacon_node:5052
