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
	--recent-genesis \
	--rpc \
	--rpc-address 0.0.0.0 \
	--db disk \
	--network-dir /root/network \
	--listen-address 0.0.0.0 \
	--debug-level warn \
	$BOOT_NODES_FLAG \
	$DISCOVERY_ADDR_FLAG
