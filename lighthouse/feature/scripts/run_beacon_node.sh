if [ -z "$BOOT_NODES" ]; then
	BOOT_NODES_FLAG=""
else
	BOOT_NODES_FLAG="--boot-nodes ${BOOT_NODES}"
fi

./lighthouse/target/release/beacon_node \
	--rpc \
	--rpc-address 0.0.0.0 \
	--http \
	--http-address 0.0.0.0 \
	--listen-address 0.0.0.0 \
	$BOOT_NODES_FLAG
