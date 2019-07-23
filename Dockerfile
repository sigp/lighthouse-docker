FROM sigp/lighthouse

ENV CARGO_HOME /root/.cargo

VOLUME /root/.cargo
VOLUME /root/lighthouse

CMD cd /root/lighthouse && cargo build --all --release
