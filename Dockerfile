FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl build-essential && curl https://sh.rustup.rs -sSf | bash -s -- -y && . "$HOME/.cargo/env" && cargo install typstyle --locked

ENV PATH /root/.cargo/bin:$PATH

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
