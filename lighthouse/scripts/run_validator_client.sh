./lighthouse/target/release/account_manager \
	generate_deterministic \
	-i $FIRST_VALIDATOR \
	-j $LAST_VALIDATOR \

./lighthouse/target/release/validator_client \
	--server $BEACON_NODE:5051
