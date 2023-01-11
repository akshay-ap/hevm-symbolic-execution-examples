# Example 3: executing against deployed contracts

# Setup etherscan api key:

```bash
export ETHERSCAN_API_KEY=FMKY4K6PD1JF17XT7A6583EQDDRSGPCCMH
seth bundle-source 0x06af07097c9eeb7fd685c692751d5c66db49c215 > chaisrc.json
```

```bash
hevm symbolic --rpc https://mainnet.infura.io/v3/3481fe0c445e445a8d1693468ed28f4a --address 0x06af07097c9eeb7fd685c692751d5c66db49c215 --solver cvc4 --debug
```
