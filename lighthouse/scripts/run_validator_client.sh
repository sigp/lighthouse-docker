/root/lighthouse/target/release/account_manager \
	-d ~/.lighthouse-validator \
	generate_deterministic \
	-i $FIRST_VALIDATOR \
	-n $NUM_VALIDATORS \

/root/lighthouse/target/release/validator_client \
	--server $BEACON_NODE:5051
	--eth2-spec /root/.lighthouse/eth2-spec.toml
