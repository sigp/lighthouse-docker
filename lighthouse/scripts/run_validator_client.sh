/root/lighthouse/target/release/validator_client \
	--server $BEACON_NODE \
	--debug-level $DEBUG_LEVEL \
	testnet \
	-b \
	insecure \
	$FIRST_VALIDATOR \
	$NUM_VALIDATORS
