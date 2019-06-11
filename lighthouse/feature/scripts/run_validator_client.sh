./lighthouse/target/release/account_manager \
	-d ~/.lighthouse-validator \
	generate_deterministic \
	-i $FIRST_VALIDATOR \
	-n $NUM_VALIDATORS \

./lighthouse/target/release/validator_client \
	--server $BEACON_NODE:5051
