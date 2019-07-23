all: lighthouse-builder binaries beacon-node

lighthouse-builder:
	docker build . -t lighthouse-builder

binaries:
	docker run --mount type=bind,source="$(shell pwd)"/lighthouse/repo,target=/root/lighthouse --mount type=bind,source="$(shell pwd)"/lighthouse/cargo-cache,target=/root/.cargo lighthouse-builder

beacon-node:
	docker-compose build beacon_node_1
