#! /bin/bash

DEFAULT_TESTNET=medalla

# Set testnet name
if [ "$TESTNET" = "" ]; then
	TESTNET=$DEFAULT_TESTNET
fi

if [ "$IMPORT_LAUNCHPAD" != "" ]; then
	echo $KEYSTORE_PASSWD | lighthouse \
		--testnet $TESTNET \
		account validator import \
		--directory /root/validator_keys \
		--reuse-password \
		--stdin-inputs
fi

if [ "$START_VALIDATOR" != "" ]; then
	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		--testnet $TESTNET \
		validator \
		--beacon-node http://beacon_node:5052
fi
