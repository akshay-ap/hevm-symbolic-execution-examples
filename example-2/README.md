# Example 2: Debugging

## Compile

```bash
solc --combined-json=srcmap,srcmap-runtime,bin,bin-runtime,ast,metadata,storage-layout,abi token.sol > combined.json
```

## Execute

```bash
hevm symbolic --code $(cat combined.json | jq  '.contracts."token.sol:Token"."bin-runtime"' | tr -d '"') --debug --json-file combined.json --solver cvc4
```

```bash
hevm symbolic --code $(cat combined.json | jq  '.contracts."token.sol:Token"."bin-runtime"' | tr -d '"') --json-file combined.json --solver cvc4 --get-models
```
