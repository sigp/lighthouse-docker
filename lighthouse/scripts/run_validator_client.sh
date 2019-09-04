/root/lighthouse/target/release/validator_client \
	--server $BEACON_NODE \
	--debug-level warn \
	testnet \
	-b \
	insecure \
	$FIRST_VALIDATOR \
	$NUM_VALIDATORS
