FROM sigp/lighthouse

ENV CARGO_HOME /root/.cargo

VOLUME /root/.cargo
VOLUME /root/lighthouse

RUN mkdir /root/.lighthouse
RUN mkdir /root/.lighthouse-validator

COPY ./configs/beacon-node.toml /root/.lighthouse/beacon-node.toml
COPY ./configs/eth2-spec.toml /root/.lighthouse/eth2-spec.toml
COPY ./configs/validator-client.toml /root/.lighthouse-validator/validator-client.toml
COPY ./configs/eth2-spec.toml /root/.lighthouse-validator/eth2-spec.toml

COPY ./scripts/ .
