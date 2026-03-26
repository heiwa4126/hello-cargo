hello:
    echo "Hello, World!"

hi:
    echo "hi" > tmp.txt
    cat tmp.txt
    rm tmp.txt

test:
    cargo test

build:
    cargo build --release

lint:
    cargo clippy && cargo fmt --check && just --fmt --check --unstable

fmt:
    cargo fmt && oxfmt && just --fmt --unstable
