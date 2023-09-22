# wasi-anatomy-hello-world

WASIがどうやってHello Worldしてるのかを見る

# wasmer

yayでインストール

```
❯ wasmer -V
wasmer 4.2.0
```

# wabt

yayでインストール

```
❯ wat2wasm --version
1.0.31
```

# zig

rtxで用意

```
❯ zig version
0.11.0
```

## zigでの実行

```
zig run src/main.zig
```

## wasmビルド

```
zig build-exe -O ReleaseSmall -target wasm32-wasi src/main.zig
```

target一覧は下記より
https://ziglang.org/download/0.8.0/release-notes.html#Support-Table

wasm64対応コンパイラは存在しない
