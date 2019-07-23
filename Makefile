binaries :
	docker build . -t lighthouse-builder
	docker run --mount type=bind,source="$(shell pwd)"/lighthouse/repo,target=/root/lighthouse --mount type=bind,source="$(shell pwd)"/lighthouse/cargo-cache,target=/root/.cargo lighthouse-builder
