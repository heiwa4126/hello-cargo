# hello-cargo

ブランクがあったので
[Hello, Cargo! - The Rust Programming Language 日本語版](https://doc.rust-jp.rs/book-ja/ch01-03-hello-cargo.html)
をやりなおし。環境構築なども学び直し。

タスクランナーに
[just](https://github.com/casey/just)
を使ってみた(別途インストールする必要あり。自分は aqua を使った)

```sh
just  # cargo run
just lint
just fmt
just build  # build release version
```

## GitHub参照として利用

利用するプロジェクトの`Cargo.toml`に Git 依存を追加する。

```toml
[dependencies]
hello-cargo = { git = "https://github.com/heiwa4126/hello-cargo" }
```

Rust コードでは、パッケージ名の`-`が`_`になったクレート名で利用する。

```rust
use hello_cargo::greet;

fn main() {
	println!("{}", greet());
}
```

特定のコミットやタグに固定する場合は、依存指定に`rev = "..."`または`tag = "..."`を追加する。

## TODO

- [ ] GitHub Dependabot (今のところ依存がない)
- [ ] GitHub Actions でビルド&デプロイ(release に置く)

## メモ

バージョン情報

```console
$ rustup --version
rustup 1.29.0 (28d1352db 2026-03-05)
info: This is the version for the rustup toolchain manager, not the rustc compiler.
info: the currently active `rustc` version is `rustc 1.94.0 (4a4ef493e 2026-03-02)`

$ rustc --version
rustc 1.94.0 (4a4ef493e 2026-03-02)

$ cargo --version
cargo 1.94.0 (85eff7c80 2026-01-15)

$ just --version
just 1.48.0
```
