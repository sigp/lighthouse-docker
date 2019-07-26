all: repo-builder repo beacon-node

repo-builder:
	docker build . -t lighthouse-builder

repo:
	docker run --mount type=bind,source="$(shell pwd)"/lighthouse/repo,target=/root/lighthouse --mount type=bind,source="$(shell pwd)"/lighthouse/cargo-cache,target=/root/.cargo lighthouse-builder

beacon-node:
	docker build ./lighthouse --tag lighthouse:docker-testnet
