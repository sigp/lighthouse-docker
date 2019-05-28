cd lighthouse

cargo run \
	--bin beacon_node \
	--release \
	-- \
	--rpc \
	--rpc-address 0.0.0.0 \
	--http \
	--http-address 0.0.0.0 \
