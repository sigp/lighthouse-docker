sleep 3s

/root/lighthouse/target/release/beacon_node \
	--debug-level warn \
	testnet \
	--force \
	bootstrap \
	http://172.42.0.250:5052
