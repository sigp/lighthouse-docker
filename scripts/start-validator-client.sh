#! /bin/bash
#
# Waits until the `~/.lighthouse/validators` directory contains $MIN_VALIDATOR_COUNT
# files (we assume that each file is a validator directory) before starting the
# validator client.

if [ "$START_VALIDATOR" != "" ]; then
	while [ $(ls -1 -d ~/.lighthouse/validators | wc -l) != $VALIDATOR_COUNT ]
	do
		echo "Waiting for $VALIDATOR_COUNT validators."
		sleep 1
	done

	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		validator \
		--server http://beacon_node:5052
fi
