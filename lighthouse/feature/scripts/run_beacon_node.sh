if [ -f /bootnode/enr.dat ]; then
	BOOT_NODES_FLAG="--boot-nodes $(cat /bootnode/enr.dat)"
else
	BOOT_NODES_FLAG=""
fi

if [ -z "$DISCOVERY_ADDR" ]; then
	DISCOVERY_ADDR_FLAG=""
else
	DISCOVERY_ADDR_FLAG="--discovery-address ${DISCOVERY_ADDR}"
fi

./lighthouse/target/release/beacon_node \
	--recent-genesis \
	--rpc \
	--rpc-address 0.0.0.0 \
	--http \
	--http-address 0.0.0.0 \
	--listen-address 0.0.0.0 \
	$BOOT_NODES_FLAG \
	$DISCOVERY_ADDR_FLAG
