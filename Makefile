all: repo-builder-image build-repo beacon-node-image

repo-builder-image:
	docker build . -t lighthouse-builder

build-repo:
	docker run --mount type=bind,source="$(shell pwd)"/lighthouse/repo,target=/root/lighthouse --mount type=bind,source="$(shell pwd)"/lighthouse/cargo-cache,target=/root/.cargo lighthouse-builder

beacon-node-image:
	docker build ./lighthouse --tag lighthouse:docker-testnet
