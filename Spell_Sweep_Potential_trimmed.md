# Spell Sweep Potential (Trimmed)

Final shortlist after onchain verification (Blockscout, 2026-07-07) of the candidates from
`Spell_Sweep_Potential.md`. Every address below was confirmed live. The borderline entries from the
Potential report (fixed 1 USD oracle, SYRUP token, Symbiotic wiring, one-off claims) are dropped.

## Onchain verification results

| Address | Chain | What it is onchain | Status |
|---|---|---|---|
| `0xb0c424116172B55CbB6dD3136F5989F7959e5B91` | Ethereum | Verified `VaultV2`, token "Spark Blue Chip USDT Vault" (sparkUSDTbc), totalAssets ~2.68M USDT, 8 holders | LIVE |
| `0xc7CDcFDEfC64631ED6799C95e3b110cd42F2bD22` | Ethereum | Old USDT Vault V2 (current registry `MORPHO_VAULT_V2_USDT`), totalAssets ~2.76 USDT | DEPRECATED (drained) |
| `0x1851c64BBfad132CBE75481f1690C381288ea492` | Ethereum | ERC1967 proxy to verified `OTCBuffer`, deployed 2026-05-13 by Spark deployer `0xC758...136f` | LIVE |
| `0x491EDFB0B8b608044e227225C715981a30F3A44E` | Ethereum | Verified `ALMProxy` (Grove), token balances updating at head blocks | LIVE |
| `0x6C96dE32CEa08842dcc4058c14d3aaAD7Fa41dee` | Ethereum | Proxy to `OAdapterUpgradeable`, tagged "USDT0: OAdapterUpgradeable" (Tether/LayerZero) | LIVE |
| `0x14E4A1B13bf7F943c8ff7C51fb60FA964A298D92` | Arbitrum | Proxy to `OUpgradeable` (USDT0 OFT), active token transfers | LIVE |
| `0x64B157212C21097002920D57322B671b88DFcCBC` | Ethereum | Verified `CBBTCRatioOracle`, deployed 2026-03-03 by Spark deployer `0xC758...136f` | LIVE |
| `0xd0B378dA552D06B6D3497e4b5ba2A83418f78d06` | Ethereum | Verified `RETHRatioOracle`, same deployment batch | LIVE |
| `0x4C805FD3c64B79840d36813Fc90c165bf77bb7E4` | Ethereum | Verified `WEETHRatioOracle`, same deployment batch | LIVE |
| `0x5c29868C58b6e15e2b962943278969Ab6a7D3212` | Ethereum | Chainlink `EACAggregatorProxy` (LBTC/BTC) | LIVE |
| `0xfdFD9C85aD200c506Cf9e21F1FD8dd01932FBB23` | Ethereum | Chainlink `EACAggregatorProxy` (WBTC/BTC), emitting since 2022, logs at head | LIVE |
| `0x464C71f6c2F760DdA6093dCB91C24c39e5d6e18c` | Ethereum | Aave Collector V2 proxy (`CollectorWithCustomImpl`), tagged Aave | LIVE |
| `0x663BECd10daE6C4A3Dcd89F1d76c1174199639B9` | Base | Verified `MorphoChainlinkOracleV2` (cbBTC/USDC market) | LIVE |
| `0xFEa2D58cEfCb9fcb597723c6bAE66fFE4193aFE4` | Base | Verified `MorphoChainlinkOracleV2` (WETH/USDC market) | LIVE |
| `0xBAa5CC21fd487B8Fcc2F632f3F4E8D37262a0842` | Base | Official MORPHO token (proxy to `MorphoTokenOptimism`) | LIVE |

Counterparty EOAs (`BINANCE_EXCHANGE`, `PAXOS_*`, `USCC_DEPOSIT`) are external deposit addresses; the
worthiness argument is the standing SLL rate limits keyed on them, matching the existing
`B2C2_DEPOSIT_ADDRESS` / `ANCHORAGE_USAT_USDT_DEPOSIT` registry precedent.

Superseded ALM controller versions were dropped without an onchain check: the `_upgradeController`
helper revokes the old controller in the same spell that installs the new one, so they are deprecated
by construction, and the registry already tracks the current controller on every chain.

## Final proposed additions

### Ethereum.sol

| Constant | Address | Source spells |
|---|---|---|
| `MORPHO_VAULT_V2_USDT` (update, currently `0xc7CD...bD22`) | `0xb0c424116172B55CbB6dD3136F5989F7959e5B91` | 20260507 |
| `USDT_OFT` | `0x6C96dE32CEa08842dcc4058c14d3aaAD7Fa41dee` | 20260702 |
| `BINANCE_EXCHANGE` | `0xd010b876696F345d9E0a1B70F573244FcC2e0A0e` | 20260618 |
| `BINANCE_OTC_BUFFER` | `0x1851c64BBfad132CBE75481f1690C381288ea492` | 20260618 |
| `GROVE_ALM_PROXY` | `0x491EDFB0B8b608044e227225C715981a30F3A44E` | 20250724, 20250904 |
| `AAVE_COLLECTOR` | `0x464C71f6c2F760DdA6093dCB91C24c39e5d6e18c` | 20250821, 20251030 |
| `PAXOS_PYUSD_USDC` | `0x2f7BE67e11A4D621E36f1A8371b0a5Fe16dE6B20` | 20260226 |
| `PAXOS_PYUSD_USDG` | `0x227B1912C2fFE1353EA3A603F1C05F030Cc262Ff` | 20260226 |
| `PAXOS_USDC_PYUSD` | `0xFb1F749024b4544c425f5CAf6641959da31EdF37` | 20260226 |
| `PAXOS_USDG_PYUSD` | `0x035b322D0e79de7c8733CdDA5a7EF8b51a6cfcfa` | 20260226 |
| `USCC_DEPOSIT` | `0xDB48AC0802F9A79145821A5430349cAff6d676f7` | 20251016 |

### SparkLend.sol (kill-switch oracle feeds, live KillSwitchOracle config)

| Constant | Address | Source spells |
|---|---|---|
| `WBTC_BTC_ORACLE` | `0xfdFD9C85aD200c506Cf9e21F1FD8dd01932FBB23` | 20240403, 20240905, 20260312 |
| `LBTC_BTC_ORACLE` | `0x5c29868C58b6e15e2b962943278969Ab6a7D3212` | 20260115 |
| `CBBTC_BTC_RATIO_ORACLE` | `0x64B157212C21097002920D57322B671b88DFcCBC` | 20260312 |
| `RETH_ETH_RATIO_ORACLE` | `0xd0B378dA552D06B6D3497e4b5ba2A83418f78d06` | 20260312 |
| `WEETH_ETH_RATIO_ORACLE` | `0x4C805FD3c64B79840d36813Fc90c165bf77bb7E4` | 20260312 |

### Arbitrum.sol

| Constant | Address | Source spells |
|---|---|---|
| `USDT_OFT` | `0x14E4A1B13bf7F943c8ff7C51fb60FA964A298D92` | 20260702 |

### Base.sol

| Constant | Address | Source spells |
|---|---|---|
| `WETH` | `0x4200000000000000000000000000000000000006` | 20251113 |
| `MORPHO_TOKEN` | `0xBAa5CC21fd487B8Fcc2F632f3F4E8D37262a0842` | 20250918 |
| `MORPHO_CBBTC_USDC_ORACLE` | `0x663BECd10daE6C4A3Dcd89F1d76c1174199639B9` | 20250109, 20250320, 20250529 |
| `MORPHO_WETH_USDC_ORACLE` | `0xFEa2D58cEfCb9fcb597723c6bAE66fFE4193aFE4` | 20251113 |
