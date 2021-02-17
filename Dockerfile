FROM ghcr.io/msrd0/alpine-rust:minimal

ENV CARGO_HOME=/usr/local/cargo
RUN cargo install cargo-readme \
	&& strip "$CARGO_HOME/bin/cargo-readme" \
	&& mv "$CARGO_HOME/bin/cargo-readme" /usr/bin \
	&& rm -rf "$CARGO_HOME"
