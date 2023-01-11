# Example 1: Assertions

We can use hevm symbolic to see whether there exists a pair of uints `x` and `y` such that their product is 973013

## Compile

```bash
solc --bin-runtime -o . primality.sol
```

## Execute

```bash
hevm symbolic --code $(<PrimalityCheck.bin-runtime) --sig "factor(uint x, uint y)"
```
