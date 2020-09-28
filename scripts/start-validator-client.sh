#! /bin/bash

# Set testnet name
if [ "$TESTNET" = "" ]; then
	TESTNET=$DEFAULT_TESTNET
fi

# Base dir
DATADIR=/root/.lighthouse/$TESTNET

WALLET_NAME=validators
WALLET_PASSFILE=$DATADIR/secrets/$WALLET_NAME.pass


if [ "$START_VALIDATOR" != "" ]; then
	if [ ! -d $DATADIR/secrets ]; then
		cd $DATADIR; mkdir secrets
	fi

	if [ ! -d $DATADIR/wallets ]; then
		lighthouse \
			--debug-level $DEBUG_LEVEL \
			--testnet $TESTNET \
			account \
			wallet \
			--base-dir $DATADIR/wallets \
			create \
			--name $WALLET_NAME \
			--password-file $WALLET_PASSFILE
	else
		echo "Wallet directory already exists. Will not create wallet."
	fi

	lighthouse \
		--debug-level $DEBUG_LEVEL \
		--testnet $TESTNET \
		account \
		validator \
		--base-dir $DATADIR/wallets \
		create \
		--wallet-name $WALLET_NAME \
		--wallet-password $WALLET_PASSFILE \
		--validator-dir $DATADIR/validators \
		--secrets-dir $DATADIR/secrets \
		--at-most $VALIDATOR_COUNT &&

	exec lighthouse \
		--debug-level $DEBUG_LEVEL \
		--testnet $TESTNET \
		--datadir $DATADIR/validators \
		validator \
		--secrets-dir $DATADIR/secrets \
		--auto-register \
		--server http://beacon_node:5052
fi
