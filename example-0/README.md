# Example 1: Assertions

We can use hevm symbolic to see whether there exists a pair of boolean variables `x` and `y` such that their and operation result is true.

## Compile

```bash
solc --bin-runtime -o . BooleanChecks.sol --overwrite
```

## Execute

```bash
hevm symbolic --code $(<BooleanChecks.bin-runtime) --sig "checkOR(bool x, bool y)"
```

```bash
hevm symbolic --code $(<BooleanChecks.bin-runtime) --sig "checkOR(bool x, bool y)" --get-models
```

```bash
hevm symbolic --code $(<BooleanChecks.bin-runtime) --sig "checkAND(bool x, bool y)" --get-models
```
