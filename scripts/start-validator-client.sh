#! /bin/bash

WALLET_NAME=validators
WALLET_PASSFILE=~/.lighthouse/secrets/$WALLET_NAME.pass

if [ "$START_VALIDATOR" != "" ]; then
	if [ ! -d ~/.lighthouse/secrets ]; then
		cd ~/.lighthouse; mkdir secrets
	fi

	if [ ! -d ~/.lighthouse/wallets ]; then
		lighthouse \
			--debug-level $DEBUG_LEVEL \
			account \
			wallet \
			create \
			--name $WALLET_NAME \
			--passphrase-file $WALLET_PASSFILE
	else
		echo "Wallet directory already exists. Will not create wallet."
	fi

	lighthouse \
		--debug-level $DEBUG_LEVEL \
		account \
		validator \
		create \
		--wallet-name $WALLET_NAME \
		--wallet-passphrase $WALLET_PASSFILE \
		--at-most $VALIDATOR_COUNT &&

	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		validator \
		--auto-register \
		--server http://beacon_node:5052
fi
