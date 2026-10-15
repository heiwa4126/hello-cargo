default:
    cargo run

test:
    cargo test

build:
    cargo build --release

lint:
    cargo clippy && cargo fmt --check && just --fmt --check --unstable

fmt:
    cargo fmt && oxfmt && just --fmt --unstable
