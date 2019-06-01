FROM sigp/lighthouse

RUN git clone http://github.com/sigp/lighthouse.git

RUN cd lighthouse && cargo fetch
RUN cd lighthouse && cargo build --release --bin beacon_node
RUN cd lighthouse && cargo build --release --bin validator_client
RUN cd lighthouse && cargo build --release --bin account_manager
