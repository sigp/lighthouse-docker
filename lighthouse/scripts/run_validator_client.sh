cd lighthouse

cargo run \
	--bin account_manager \
	--release \
	-- \
	generate_deterministic \
	-i $FIRST_VALIDATOR \
	-j $LAST_VALIDATOR \

cargo run \
	--bin validator_client \
	--release \
	-- \
	--server $BEACON_NODE:5051
