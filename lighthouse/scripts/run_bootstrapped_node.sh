sleep 3s

lighthouse \
	--debug-level warn \
	beacon \
	--dummy-eth1 \
	testnet \
	--force \
	bootstrap \
	http://172.42.0.250:5052
