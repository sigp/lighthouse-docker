lighthouse \
	--debug-level warn \
	validator\
	--server $BEACON_NODE \
	--server-grpc-port 5051 \
	testnet \
	-b \
	insecure \
	$FIRST_VALIDATOR \
	$NUM_VALIDATORS
