if [ -f /root/boot-node/enr.dat ]; then
	BOOT_NODES_FLAG="--boot-nodes $(cat /root/boot-node/enr.dat)"
else
	BOOT_NODES_FLAG=""
fi

if [ -z "$DISCOVERY_ADDR" ]; then
	DISCOVERY_ADDR_FLAG=""
else
	DISCOVERY_ADDR_FLAG="--discovery-address ${DISCOVERY_ADDR}"
fi

/root/lighthouse/target/release/beacon_node \
	--debug-level warn \
	$BOOT_NODES_FLAG \
	$DISCOVERY_ADDR_FLAG \
	testnet \
	--client-config /root/configs/beacon-node.toml \
	--eth2-config /root/configs/eth2-spec.toml \
	--force \
	recent \
	$NUM_INITIAL_VALIDATORS \
	--minutes 1 \
