FROM sigp/lighthouse

ENV CARGO_HOME /root/.cargo
ENV PATH="/root/.cargo/bin:${PATH}"

VOLUME /root/.cargo
VOLUME /root/lighthouse
VOLUME /root/boot-node
VOLUME /root/network

RUN mkdir /root/config

COPY ./configs/beacon-node.toml /root/config/beacon-node.toml
COPY ./configs/eth2-spec.toml /root/config/eth2-spec.toml
COPY ./configs/validator-client.toml /root/config/validator-client.toml

COPY ./scripts/ .
