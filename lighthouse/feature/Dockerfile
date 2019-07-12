FROM lighthouse:master

RUN cd lighthouse && git pull
RUN cd lighthouse && git checkout sync-bugs

RUN cd lighthouse && cargo fetch
RUN cd lighthouse && cargo build --release --bin beacon_node
RUN cd lighthouse && cargo build --release --bin validator_client
RUN cd lighthouse && cargo build --release --bin account_manager

RUN mkdir /root/.lighthouse
RUN mkdir /root/.lighthouse-validator

COPY ./configs/beacon-node.toml /root/.lighthouse/beacon-node.toml
COPY ./configs/eth2-spec.toml /root/.lighthouse/eth2-spec.toml
COPY ./configs/validator-client.toml /root/.lighthouse-validator/validator-client.toml
COPY ./configs/eth2-spec.toml /root/.lighthouse-validator/eth2-spec.toml

COPY ./scripts/ .
