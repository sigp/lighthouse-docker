FROM sigp/lighthouse

ENV CARGO_HOME /root/.cargo

VOLUME /root/.cargo
VOLUME /root/lighthouse
VOLUME /root/configs
VOLUME /root/boot-node
VOLUME /root/network

RUN mkdir /root/.lighthouse-validator

COPY ./configs/beacon-node.toml /root/configs/beacon-node.toml
COPY ./configs/eth2-spec.toml /root/configs/eth2-spec.toml

COPY ./scripts/ .
