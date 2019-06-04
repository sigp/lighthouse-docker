FROM lighthouse:master

RUN cd lighthouse && git checkout docker-env
RUN cd lighthouse && git pull

RUN cd lighthouse && cargo fetch
RUN cd lighthouse && cargo build --release --bin beacon_node
RUN cd lighthouse && cargo build --release --bin validator_client
RUN cd lighthouse && cargo build --release --bin account_manager

COPY ./scripts/ .
