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

lighthouse \
	--debug-level warn \
	beacon \
	$BOOT_NODES_FLAG \
	$DISCOVERY_ADDR_FLAG \
	testnet \
	--client-config /root/config/beacon-node.toml \
	--eth2-config /root/config/eth2-spec.toml \
	--force \
	recent \
	$NUM_INITIAL_VALIDATORS \
	--minutes 1 \
