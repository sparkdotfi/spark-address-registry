# Spell Sweep Potential

Analysis of the 332 unique constant addresses swept from `spark-spells` (see `Spell_Sweep_raw.md`).
114 of them already exist in `spark-address-registry`; the remaining 218 are analyzed below,
grouped by category, with a verdict on whether they are worth adding to the registry.

Counting convention: "Payload uses" = distinct spells (date + chain) where the constant is defined in the
executable payload; "Test uses" = distinct spells where it appears in the `.t.sol` test file.

## Verdict summary

| Category | Count | Verdict |
|---|---|---|
| Candidates worth adding (see section 1) | 18 | Add, subject to onchain verification |
| Borderline (see section 2) | 6 | Lean no, documented for reference |
| Superseded ALM controllers | 12 | No, old controller versions revoked on upgrade |
| One-off IRMs / interest rate strategies | 36 | No, versioned deployments replaced spell over spell |
| Expired Pendle PT tokens and price feeds | 33 | No, all matured on or before 18 Dec 2025 |
| Test-only constants (whales, old impls, mock users) | 50 | No, never referenced by an executable payload |
| Goerli testnet constants | 18 | No, testnet retired |
| Historical oracles / price feeds replaced later | ~35 | No, superseded by newer oracle configurations |
| Gnosis chain constants | 8 | No, SparkLend Gnosis instance wound down |
| One-off cross-chain payload deployments | 8 | No, single-execution artifacts |

## 1. Candidates worth adding

These recur across payloads or belong to integrations that are still live and will be referenced by
future spells. Spark-authored or Spark-managed entries additionally get an onchain deprecation check
(results in `Spell_Sweep_Potential_trimmed.md`).

| Address | Name | Chain | Payload uses | Rationale |
|---|---|---|---|---|
| `0xb0c424116172B55CbB6dD3136F5989F7959e5B91` | `NEW_MORPHO_VAULT_V2_USDT` | Ethereum | 1 (20260507) | Spark-curated Morpho Vault V2 for USDT. Replaced the old vault `0xc7CD...bD22` which the registry still lists as `MORPHO_VAULT_V2_USDT` - the registry entry is stale and should be updated. Spark-managed: onchain check required. |
| `0x6C96dE32CEa08842dcc4058c14d3aaAD7Fa41dee` | `USDT_OFT` | Ethereum | 1 (20260702) | LayerZero OFT adapter for USDT0 bridging, rate-limited in the live 20260702 spell. Cross-chain USDT movement is an ongoing SLL capability; every future limit change re-references this address. |
| `0x14E4A1B13bf7F943c8ff7C51fb60FA964A298D92` | `USDT_OFT` | Arbitrum | 1 (20260702) | Arbitrum leg of the same USDT0 OFT integration. |
| `0xd010b876696F345d9E0a1B70F573244FcC2e0A0e` | `BINANCE_EXCHANGE` | Ethereum | 1 (20260618) | OTC swap counterparty whitelisted in the MainnetController (max slippage, recharge rate, whitelisted assets). Same pattern as `B2C2_DEPOSIT_ADDRESS` / `ANCHORAGE_USAT_USDT_DEPOSIT` already in the registry. |
| `0x1851c64BBfad132CBE75481f1690C381288ea492` | `BINANCE_OTC_BUFFER` | Ethereum | 1 (20260618) | OTCBuffer contract for the Binance OTC flow, approved for USDT/USDC. Spark-managed: onchain check required. |
| `0x491EDFB0B8b608044e227225C715981a30F3A44E` | `GROVE_ALM_PROXY` | Ethereum | 2 (20250724, 20250904) | Grove (fellow Sky Star) ALM proxy, destination of BUIDLI transfers. Registry already carries `GROVE_SUBDAO_PROXY`; asset transfers between Stars recur. |
| `0x464C71f6c2F760DdA6093dCB91C24c39e5d6e18c` | `AAVE_V3_COLLECTOR` / `AAVE_PAYMENT_ADDRESS` | Ethereum | 2 (20250821, 20251030) | Aave V3 Collector, destination of recurring Aave revenue-share payments from the SubDAO proxy. |
| `0x2f7BE67e11A4D621E36f1A8371b0a5Fe16dE6B20` | `PAXOS_PYUSD_USDC` | Ethereum | 1 (20260226) | Paxos PYUSD/USDC redemption destination, whitelisted with ongoing SLL transfer rate limits. Counterparty pattern matches B2C2/Anchorage precedent. |
| `0x227B1912C2fFE1353EA3A603F1C05F030Cc262Ff` | `PAXOS_PYUSD_USDG` | Ethereum | 1 (20260226) | As above, PYUSD to USDG leg. |
| `0xFb1F749024b4544c425f5CAf6641959da31EdF37` | `PAXOS_USDC_PYUSD` | Ethereum | 1 (20260226) | As above, USDC to PYUSD leg. |
| `0x035b322D0e79de7c8733CdDA5a7EF8b51a6cfcfa` | `PAXOS_USDG_PYUSD` | Ethereum | 1 (20260226) | As above, USDG to PYUSD leg. |
| `0xDB48AC0802F9A79145821A5430349cAff6d676f7` | `USCC_DEPOSIT` | Ethereum | 1 (20251016) | Superstate USCC subscription destination with standing rate limits. Registry already has `USCC` and `SUPERSTATE_REDEMPTION`; the deposit leg completes the set. |
| `0x663BECd10daE6C4A3Dcd89F1d76c1174199639B9` | `CBBTC_USDC_ORACLE` | Base | 3 (20250109, 20250320, 20250529) | Morpho market oracle for the cbBTC/USDC market on Base. Redefined in three separate payloads - exactly the repetition the registry exists to remove. |
| `0x4200000000000000000000000000000000000006` | `WETH` | Base | 1 (20251113) | Canonical WETH on Base, onboarded as Morpho collateral. Stable predeploy, zero deprecation risk. |
| `0xFEa2D58cEfCb9fcb597723c6bAE66fFE4193aFE4` | `ETH_ORACLE` | Base | 1 (20251113) | Morpho market oracle for the WETH/USDC market on Base. Will be re-referenced on every cap change, same trajectory as the cbBTC/USDC oracle above. |
| `0xfdFD9C85aD200c506Cf9e21F1FD8dd01932FBB23` | `WBTC_BTC_ORACLE` | Ethereum | 3 (20240403, 20240905, 20260312) | Chainlink WBTC/BTC feed, currently registered in the SparkLend KillSwitchOracle. Three payload uses across two years. |
| `0xBAa5CC21fd487B8Fcc2F632f3F4E8D37262a0842` | `MORPHO_TOKEN` | Base | 1 (20250918) | MORPHO token on Base (rewards claims/transfers). Registry already has Ethereum `MORPHO_TOKEN`; chain-parity addition. |
| `0x5c29868C58b6e15e2b962943278969Ab6a7D3212` | `LBTC_BTC_ORACLE` | Ethereum | 1 (20260115) | LBTC/BTC oracle registered in the KillSwitchOracle (live config). Grouped with the ratio oracles below; onchain check required. |

Also in this bucket, the three kill-switch ratio oracles from 20260312 (live KillSwitchOracle config, Spark-selected):

| Address | Name | Payload uses |
|---|---|---|
| `0x64B157212C21097002920D57322B671b88DFcCBC` | `CBBTC_BTC_RATIO_ORACLE` | 1 (20260312) |
| `0xd0B378dA552D06B6D3497e4b5ba2A83418f78d06` | `RETH_ETH_RATIO_ORACLE` | 1 (20260312) |
| `0x4C805FD3c64B79840d36813Fc90c165bf77bb7E4` | `WEETH_ETH_RATIO_ORACLE` | 1 (20260312) |

## 2. Borderline (lean no)

| Address | Name | Payload uses | Why not |
|---|---|---|---|
| `0x42a03F81dd8A1cEcD746dc262e4d1CD9fD39F777` | `FIXED_PRICE_ORACLE` / `DAI_ORACLE` / `PYUSD_PRICE_FEED` | 3 (20240110, 20240124, 20250807) | Fixed 1 USD oracle reused for DAI and PYUSD listings. Genuine repetition, but the registry does not track per-asset SparkLend oracles and each listing goes through the config engine with an explicit feed. Revisit if it gets a fourth use. |
| `0x643C4E15d7d62Ad0aBeC4a9BD4b001aA3Ef52d66` | `SYRUP` | 1 (20251002) | Maple governance token, single rewards transfer. Registry tracks the Syrup vaults, not the token. |
| `0x8164Cc65827dcFe994AB23944CBC90e0aa80bFcb` | `AAVE_INCENTIVE_CONTROLLER` | 1 (20251002) | One-off rewards claim during Aave offboarding. |
| `0x2C5bF9E8e16716A410644d6b4979d74c1951952d` etc. | Symbiotic stack (`NETWORK_DELEGATOR`, `NETWORK_REGISTRY`, `OPERATOR_REGISTRY`, `RESET_HOOK`, `VETO_SLASHER`) | 1 (20251002) | One-time stSPK Symbiotic vault wiring. The durable artifact (`STSPK`) is already in the registry. |
| `0xEFF097C5CC7F63e9537188FE381D1360158c1511` | `VEST_USER` | 1 (20260212) | Individual DSS vest recipient, not infrastructure. |
| `0x86392dC19c0b719886221c78AB11eb8Cf5c52812` | `STETH_ETH_ORACLE` | 1 (20240403) | Kill-switch feed from 2024, superseded by the 20260312 ratio-oracle configuration. |

## 3. Superseded ALM controller versions

Each `NEW_ALM_CONTROLLER` constant is a one-time upgrade artifact. The upgrade helper revokes the old
controller when the new one is installed, so every address below is deprecated by construction. The
registry already tracks the current controller per chain (Ethereum v1.10 `0x5c46...02D3`, plus current
Base/Arbitrum/Optimism/Unichain/Avalanche controllers).


| Address | Chain | Spell |
|---|---|---|
| `0x5cf73FDb7057E436A6eEaDFAd27E45E7ab6E431e` | Ethereum | 20250109 |
| `0xF51164FE5B0DC7aFB9192E1b806ae18A8813Ae8c` | Ethereum | 20250403 |
| `0xF8Dff673b555a225e149218C5005FC88f4a13870` | Ethereum | 20250417 |
| `0x577Fa18a498e1775939b668B0224A5e5a1e56fc3` | Ethereum | 20250918 |
| `0xE52d643B27601D4d2BAB2052f30cf936ed413cec` | Ethereum | 20251127 |
| `0xc9ff605003A1b389980f650e1aEFA1ef25C8eE32` | Ethereum | 20260129 |
| `0x5F032555353f3A1D16aA6A4ADE0B35b369da0440` | Base | 20250109 |
| `0xB94378b5347a3E199AF3575719F67A708a5D8b9B` | Base | 20250403 |
| `0xC0bcbb2554D4694fe7b34bB68b9DdfbB55D896BC` | Base | 20250918 |
| `0x98f567464e91e9B4831d3509024b7868f9F79ee1` | ArbitrumOne | 20250403 |
| `0x3a1d3A9B0eD182d7B17aa61393D46a4f4EE0CEA5` | ArbitrumOne | 20251030 |
| `0x7CD6EC14785418aF694efe154E7ff7d9ba99D99b` | Unichain | 20251030 |

Also in this bucket: `0x2276f52afba7Cf2525fd0a050DF464AC8532d0ef` (`CAP_AUTOMATOR`, 3 payload uses in 2024) -
old Cap Automator, superseded by v1.1 at `0x4C1341636721b8B687647920B2E9481f3AB1F2eE` which the registry
already holds as `SparkLend.CAP_AUTOMATOR`.

## 4. Not worth adding - bulk categories

### 4.1 One-off IRMs / interest rate strategies (36)

Every rate change deploys a fresh IRM from the rates factory; the previous one is abandoned. Historical
versions have no future use.


| Address | Name(s) | Chains | Payload uses | Test uses | Last seen |
|---|---|---|---|---|---|
| `0x41709f51E59ddbEbF37cE95257b2E4f2884a45F8` | `GNOSIS_PAYLOAD`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum, Goerli | 3 | 3 | 20231129-Ethereum |
| `0x9f9782880dd952F067Cad97B8503b0A3ac0fb21d` | `DAI_INTEREST_RATE_STRATEGY`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 2 | 2 | 20230913-Ethereum |
| `0x2961d766D71F33F6C5e6Ca8bA7d0Ca08E6452C92` | `NEW_USDC_USDT_IRM`, `OLD_USDC_IRM`, `OLD_USDT_IRM` | Ethereum, Spell | 1 | 3 | 20260702-Spell |
| `0xD3d3BcD8cC1D3d0676Da13F7Fc095497329EC683` | `OLD_USDC_USDT_IRM`, `PYUSD_IRM_OLD`, `USDC_USDT_PYUSD_IRM` | Ethereum, Spell | 1 | 3 | 20251113-Spell |
| `0x7949a8Ef09c49506cCB1cB983317272dcf4170Dd` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240320-Ethereum |
| `0x3C4B090b5b479402e2270C66461D6a62B2054198` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240308-Ethereum |
| `0x512AFEDCF6696d9707dCFECD4bdc73e9902e3c6A` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240221-Ethereum |
| `0xE9905C2dCf64F3fBAeE50a81D1844339FC77e812` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240516-Ethereum |
| `0x5ae77aE8ec1B0F9a741C80A4Cdb876e6b5B619b9` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240711-Ethereum |
| `0xC527A1B514796A6519f236dd906E73cab5aA2E71` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20250109-Ethereum |
| `0x5a7E7a32331189a794ac33Fec76C0A1dD3dDCF9c` | `DAI_IRM`, `DAI_IRM_NEW`, `DAI_IRM_OLD` | Ethereum | 1 | 2 | 20250501-Ethereum |
| `0x92af90912FD747aE836e0E9d5462A210EfE6A881` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240808-Ethereum |
| `0x883b03288D1827066C57E5db96661aB994Ef3800` | `DAI_IRM`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240417-Ethereum |
| `0xd957978711F705358dbE34B37D381a76E1555E28` | `DAI_IRM_OLD`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `NEW_DAI_IRM` | Ethereum | 1 | 2 | 20250320-Ethereum |
| `0x7729E1CE24d7c4A82e76b4A2c118E328C35E6566` | `DAI_USDS_IRM`, `DAI_USDS_OLD_IRM` | Ethereum | 1 | 2 | 20250529-Ethereum |
| `0xE15718d48E2C56b65aAB61f1607A5c096e9204f1` | `DAI_USDS_IRM`, `DAI_USDS_NEW_IRM`, `USDS_DAI_IRM_OLD` | Ethereum | 1 | 2 | 20250807-Ethereum |
| `0x7d8f2210FAD012E7d260C3ddBeCaCfd48277455F` | `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 2 | 20240124-Ethereum |
| `0xb7b734CF1F13652E930f8a604E8f837f85160174` | `NEW_STABLECOINS_INTEREST_RATE_STRATEGY`, `NEW_STABLECOINS_IRM`, `USDC_IRM_OLD`, `USDT_IRM_OLD` | Ethereum | 1 | 2 | 20250501-Ethereum |
| `0xf4268AeC16d13446381F8a2c9bB05239323756ca` | `NEW_WETH_INTEREST_RATE_STRATEGY`, `OLD_WETH_IRM`, `WETH_IRM` | Ethereum | 1 | 2 | 20250821-Ethereum |
| `0x6fd32465a23aa0DBaE0D813B7157D8CB2b08Dae4` | `NEW_WETH_INTEREST_RATE_STRATEGY`, `OLD_WETH_INTEREST_RATE_STRATEGY`, `WETH_IRM` | Ethereum | 1 | 2 | 20241114-Ethereum |
| `0x4FD869adB651917D5c2591DD7128Ae6e1C24bDD5` | `NEW_WETH_IRM`, `OLD_WETH_IRM` | Ethereum, Spell | 1 | 2 | 20260423-Spell |
| `0x4Da18457A76C355B74F9e4A944EcC882aAc64043` | `OLD_STABLECOINS_INTEREST_RATE_STRATEGY`, `STABLECOINS_IRM` | Ethereum | 1 | 2 | 20250109-Ethereum |
| `0xD99f41B22BBb4af36ae452Bf0Cc3aA07ce91bD66` | `OLD_USDS_DAI_IRM`, `USDS_DAI_IRM` | Ethereum | 1 | 2 | 20250821-Ethereum |
| `0x7F2fc6A7E3b3c658A84999b26ad2013C4Dc87061` | `USDC_USDT_IRM`, `USDC_USDT_IRM_OLD` | Ethereum | 1 | 2 | 20250807-Ethereum |
| `0xD94BA511284d2c56F59a687C3338441d33304E07` | `USDS_IRM`, `USDS_IRM_NEW`, `USDS_IRM_OLD` | Ethereum | 1 | 2 | 20250501-Ethereum |
| `0xDE99e49E9e42B1d8490C38926e6C9A79010e6eF2` | `NEW_USDC_IRM` | Ethereum, Spell | 1 | 1 | 20260702-Spell |
| `0x4E494988E68e6Fc52309BE4937869e27F0C304AC` | `NEW_USDT_IRM` | Ethereum, Spell | 1 | 1 | 20260423-Spell |
| `0xDFB6206FfC5BA5B48D2852370ee6A1bf6887476a` | `NEW_WETH_IRM` | Ethereum, Spell | 1 | 1 | 20260423-Spell |
| `0xDF7dedCfd522B1ee8da2c8526f642745800c8035` | `PYUSD_IRM`, `PYUSD_IRM_NEW` | Ethereum, Spell | 1 | 1 | 20251113-Spell |
| `0x0F1a9a787b4103eF5929121CD9399224c6455dD6` | `NEW_USDC_INTEREST_RATE_STRATEGY`, `NEW_USDT_INTEREST_RATE_STRATEGY`, `USDC_IRM`, `USDT_IRM` | Ethereum | 1 | 1 | 20240124-Ethereum |
| `0x8a95998639A34462A1FdAaaA5506F66F90Ef2fDd` | `NEW_USDS_DAI_IRM` | Ethereum | 1 | 1 | 20250821-Ethereum |
| `0x191E97623B1733369290ee5d018d0B068bc0400D` | `DAI_INTEREST_RATE_STRATEGY` | Ethereum | 1 | 0 | 20230802-Ethereum |
| `0x113dc45c524404F91DcbbAbB103506bABC8Df0FE` | `OLD_DAI_INTEREST_RATE_STRATEGY` | Ethereum | 0 | 1 | 20230525-Ethereum |
| `0xbc8A68B0ab0617D7c90d15bb1601B25d795Dc4c8` | `OLD_USDC_INTEREST_RATE_STRATEGY`, `OLD_USDT_INTEREST_RATE_STRATEGY` | Ethereum | 0 | 1 | 20240124-Ethereum |
| `0xE27c3f9d35e00ae48144b35DD157F72AaF36c77e` | `OLD_WETH_INTEREST_RATE_STRATEGY` | Ethereum | 0 | 1 | 20240808-Ethereum |
| `0x2DB2f1eE78b4e0ad5AaF44969E2E8f563437f34C` | `USDS_IRM_OLD` | Ethereum | 0 | 1 | 20250320-Ethereum |

### 4.2 Expired Pendle PT tokens and price feeds (33)

All swept PT markets matured between Oct 2024 and Dec 2025 (today is Jul 2026). PT onboarding is inherently ephemeral; PT addresses should stay spell-local.

| Address | Name(s) | Chains | Payload uses | Test uses | Last seen |
|---|---|---|---|---|---|
| `0x38d130cEe60CDa080A3b3aC94C79c34B6Fc919A7` | `PT_27MAR2025_PRICE_FEED`, `PT_SUSDE_27MAR2025_PRICE_FEED` | Ethereum | 5 | 5 | 20250403-Ethereum |
| `0xE00bd3Df25fb187d6ABBB620b3dfd19839947b81` | `PT_SUSDE_27MAR2025` | Ethereum | 5 | 5 | 20250403-Ethereum |
| `0x81E5E28F33D314e9211885d6f0F4080E755e4595` | `PT_26DEC2024_PRICE_FEED`, `PT_SUSDE_26DEC2024_PRICE_FEED` | Ethereum | 3 | 3 | 20250109-Ethereum |
| `0xEe9085fC268F6727d5D4293dBABccF901ffDCC29` | `PT_SUSDE_26DEC2024` | Ethereum | 3 | 3 | 20250109-Ethereum |
| `0xb7de5dFCb74d25c2f21841fbd6230355C50d9308` | `PT_SUSDE_29MAY2025` | Ethereum | 3 | 3 | 20250612-Ethereum |
| `0xE84f7e0a890e5e57d0beEa2c8716dDf0c9846B4A` | `PT_SUSDE_29MAY2025_PRICE_FEED` | Ethereum | 3 | 3 | 20250612-Ethereum |
| `0x62C6E813b9589C3631Ba0Cdb013acdB8544038B7` | `PT_USDE_27NOV2025` | Ethereum, Spell | 2 | 3 | 20260115-Spell |
| `0x52A34E1D7Cb12c70DaF0e8bdeb91E1d02deEf97d` | `PT_USDE_27NOV2025_PRICE_FEED` | Ethereum, Spell | 2 | 3 | 20260115-Spell |
| `0x50D2C7992b802Eef16c04FeADAB310f31866a545` | `PT_EUSDE_29MAY2025` | Ethereum | 2 | 2 | 20250612-Ethereum |
| `0x39a695Eb6d0C01F6977521E5E79EA8bc232b506a` | `PT_EUSDE_29MAY2025_PRICE_FEED` | Ethereum | 2 | 2 | 20250612-Ethereum |
| `0xC347584b415715B1b66774B2899Fef2FD3b56d6e` | `PT_SPK_USDS_25SEP2025` | Ethereum | 2 | 2 | 20250821-Ethereum |
| `0xaA31f21E3d23bF3A8F401E670171b0DA10F8466f` | `PT_SPK_USDS_25SEP2025_PRICE_FEED` | Ethereum | 2 | 2 | 20250821-Ethereum |
| `0xAE5099C39f023C91d3dd55244CAFB36225B0850E` | `PT_SUSDE_24OCT2024` | Ethereum | 2 | 2 | 20250109-Ethereum |
| `0x8A47b431A7D947c6a3ED6E42d501803615a97EAa` | `PT_USDE_27MAR2025` | Ethereum | 2 | 2 | 20250403-Ethereum |
| `0xA8ccE51046d760291f77eC1EB98147A75730Dcd5` | `PT_USDE_27MAR2025_PRICE_FEED` | Ethereum | 2 | 2 | 20250403-Ethereum |
| `0x14Bdc3A3AE09f5518b923b69489CBcAfB238e617` | `PT_EUSDE_14AUG2025` | Ethereum | 1 | 1 | 20250612-Ethereum |
| `0x4f98667af07f3faB3F7a77E65Fcf48c7335eAA7a` | `PT_EUSDE_14AUG2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250612-Ethereum |
| `0x9F56094C450763769BA0EA9Fe2876070c0fD5F77` | `PT_SUSDE_25SEP2025` | Ethereum | 1 | 1 | 20250612-Ethereum |
| `0x26394307806F4DD1ea053EC61CFFCa15613a4573` | `PT_SUSDE_25SEP2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250612-Ethereum |
| `0xe6A934089BBEe34F832060CE98848359883749B3` | `PT_SUSDE_27NOV2025` | Ethereum | 1 | 1 | 20250904-Ethereum |
| `0xd46F66D7Fc5aD6f54b9B62D36B9A4d99f3Cca451` | `PT_SUSDE_27NOV2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250904-Ethereum |
| `0x3b3fB9C57858EF816833dC91565EFcd85D96f634` | `PT_SUSDE_31JUL2025` | Ethereum | 1 | 1 | 20250417-Ethereum |
| `0x78804d5290F250A8066145D16A99bd3ea920b732` | `PT_SUSDE_31JUL2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250417-Ethereum |
| `0xCcE7D12f683c6dAe700154f0BAdf779C0bA1F89A` | `PT_SYRUP_USDC_28AUG2025` | Ethereum | 1 | 1 | 20250626-Ethereum |
| `0xdcC91883A87D336a2EEC0213E9167b4A6CD5b175` | `PT_SYRUP_USDC_28AUG2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250626-Ethereum |
| `0xBC6736d346a5eBC0dEbc997397912CD9b8FAe10a` | `PT_USDE_25SEP2025` | Ethereum | 1 | 1 | 20250626-Ethereum |
| `0x076a476329CAf84Ef7FED997063a0055900eE00f` | `PT_USDE_25SEP2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250626-Ethereum |
| `0x917459337CaAC939D41d7493B3999f571D20D667` | `PT_USDE_31JUL2025` | Ethereum | 1 | 1 | 20250320-Ethereum |
| `0xFCaE69BEF9B6c96D89D58664d8aeA84BddCe2E5c` | `PT_USDE_31JUL2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250320-Ethereum |
| `0xFfEc096c087C13Cc268497B89A613cACE4DF9A48` | `PT_USDS_14AUG2025` | Ethereum | 1 | 1 | 20250529-Ethereum |
| `0xD7c8498fF648CBB9E79d6470cf7F639e696D27A5` | `PT_USDS_14AUG2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250529-Ethereum |
| `0xA2a420230A5cb045db052E377D20b9c156805b95` | `PT_USDS_SPK_18DEC2025` | Ethereum | 1 | 1 | 20250918-Ethereum |
| `0x2bDA5e778fA40109b3C9fe9AF42332017810492B` | `PT_USDS_SPK_18DEC2025_PRICE_FEED` | Ethereum | 1 | 1 | 20250918-Ethereum |

### 4.3 Test-only constants (50)

Whale accounts, old implementations for upgrade assertions, mock users, third-party protocol internals used only in fork tests. Never referenced by an executable payload.

| Address | Name(s) | Chains | Payload uses | Test uses | Last seen |
|---|---|---|---|---|---|
| `0xC7Bdd1F2B16447dcf3dE045C4a039A60EC2f0ba3` | `AUTO_LINE` | Ethereum | 0 | 4 | 20250529-Ethereum |
| `0xc4218C1127cB24a0D6c1e7D25dc34e10f2625f5A` | `AMB_BRIDGE_EXECUTOR`, `GNOSIS_BRIDGE_EXECUTOR` | Ethereum | 0 | 3 | 20240110-Ethereum |
| `0x3696c5eAe4a7Ffd04Ea163564571E9CD8Ed9364e` | `ADAPTER_REGISTRY` | Spell | 0 | 2 | 20260507-Spell |
| `0xd1236a6A111879d9862f8374BA15344b6B233Fbd` | `DEPLOYER`, `OPTIMISM_DEPLOYER` | Ethereum | 0 | 2 | 20250529-Ethereum |
| `0xC758519Ace14E884fdbA9ccE25F2DbE81b7e136f` | `DEPLOYER`, `UNICHAIN_DEPLOYER` | Ethereum, Spell | 0 | 2 | 20260212-Spell |
| `0x6F3066538A648b9CFad0679DF0a7e40882A23AA4` | `DEPLOYER` | Base, Ethereum | 0 | 2 | 20241114-Ethereum |
| `0x19c0976f590D67707E62397C87829d896Dc0f1F1` | `MCD_JUG` | Ethereum | 0 | 2 | 20230816-Ethereum |
| `0x32BB1c0D48D8b1B3363e86eeB9A0300BAd61ccc1` | `MORPHO_MARKET_V1_ADAPTER_V2_FACTORY` | Spell | 0 | 2 | 20260507-Spell |
| `0xA1D94F746dEfa1928926b84fB2596c06926C0405` | `MORPHO_VAULT_V2_FACTORY` | Spell | 0 | 2 | 20260507-Spell |
| `0x69115a2826Eb47FE9DFD1d5CA8D8642697c8b68A` | `AGGOR_RETH` | Ethereum | 0 | 1 | 20240905-Ethereum |
| `0xb20A1374EfCaFa32F701Ab14316fA2E5b3400eD5` | `AGGOR_WEETH` | Ethereum | 0 | 1 | 20240905-Ethereum |
| `0x00480CD3ed33de45555410BA71b2F932A14b1Cf2` | `AGGOR_WSTETH` | Ethereum | 0 | 1 | 20240905-Ethereum |
| `0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9` | `ARBITRUM_USDT` | Spell | 0 | 1 | 20260702-Spell |
| `0x7ad1dd2516F1499852aAEb95a33D7Ec1BA31b5C3` | `ARKIS_FACTORY` | Spell | 0 | 1 | 20251211-Spell |
| `0xcDE9CA90aCd83b57b47ae5ccEf610FDA3049225B` | `ARKIS_MARKET` | Spell | 0 | 1 | 20251211-Spell |
| `0x50198eb43ffD192634f741b01E9507A1038d87A0` | `AVALANCHE_DEPLOYER` | Ethereum | 0 | 1 | 20251016-Ethereum |
| `0x907856BD487C405e48f96f45b451A7b6dDf801e3` | `BORROWER1` | Spell | 0 | 1 | 20251211-Spell |
| `0x50B82f42D51D875b1bfdd946ad27AeE2a6b1AB41` | `BORROWER2` | Spell | 0 | 1 | 20251211-Spell |
| `0xCB04cD15967DD4c725dE5DE487e3715b39f75f42` | `BORROWER3` | Spell | 0 | 1 | 20251211-Spell |
| `0xe01605f6b6dC593b7d2917F4a0940db2A625b09e` | `BUIDL_ADMIN` | Ethereum | 0 | 1 | 20250403-Ethereum |
| `0x8BaB0b7975A3128D3D712A33Dc59eb5346e74BCd` | `BURNER_ROUTER` | Ethereum | 0 | 1 | 20251002-Ethereum |
| `0xaBc99f366D2bE1f4e5b8DFC0F561a751dd836246` | `CAPPED_FALLBACK_WRAPPER` | Ethereum | 0 | 1 | 20240808-Ethereum |
| `0x427A1ce127b1775e4Cbd4F58ad468B9F832eA7e9` | `CENTRIFUGE_INVESTMENT_MANAGER` | Ethereum | 0 | 1 | 20250403-Ethereum |
| `0x0C1fDfd6a1331a875EA013F3897fc8a76ada5DfC` | `CENTRIFUGE_ROOT` | Ethereum | 0 | 1 | 20250403-Ethereum |
| `0x46ef0071b1E2fF6B42d36e5A177EA43Ae5917f4E` | `CHRONICLE_ETH_USD_3` | Ethereum | 0 | 1 | 20240905-Ethereum |
| `0x12F36cdEA3A28C35aC8C6Cc71D9265c17C74A27F` | `D3M_HUB` | Ethereum | 0 | 1 | 20231115-Ethereum |
| `0x1Bb799509b0B039345f910dfFb71eEfAc7022323` | `D3M_JOB` | Ethereum | 0 | 1 | 20231115-Ethereum |
| `0xAed0c38402a5d19df6E4c03F4E2DceD6e29c1ee9` | `DAI_ORACLE_OLD` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x2f01D7CFfe62673B3D2b680295A2D047F3848e4c` | `DISPATCHER` | Spell | 0 | 1 | 20251211-Spell |
| `0x3B0AAf6e6fCd4a7cEEf8c92C32DFeA9E64dC1862` | `ETHENA_OWNER` | Ethereum | 0 | 1 | 20250109-Ethereum |
| `0xe1d0508d4976Bd4b8552fBe5c31Cc0F023258f0C` | `GNO_USER` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x4C36d2919e407f0Cc2Ee3c993ccF8ac26d9CE64e` | `L1_AMB_CROSS_DOMAIN_MESSENGER_ADDRESS` | Ethereum | 0 | 1 | 20230927-Ethereum |
| `0x75Df5AF045d91108662D8080fD1FEFAd6aA0bb59` | `L2_AMB_CROSS_DOMAIN_MESSENGER_ADDRESS` | Ethereum | 0 | 1 | 20230927-Ethereum |
| `0x08669C836F41AEaD03e3EF81a59f3b8e72EC417A` | `LST_SOURCE` | Ethereum | 0 | 1 | 20240808-Ethereum |
| `0xe70d11D23F36826C58f30C61B4DeAf0A89a6D837` | `MARKET_FACTORY` | Spell | 0 | 1 | 20251211-Spell |
| `0xf1DB0D7f6aEc96d096f1b42d6B14440ca3d1c78b` | `META_MORPHO_VAULT_OWNER` | Ethereum | 0 | 1 | 20240320-Ethereum |
| `0x62DA45546A0F87b23941FFE5CA22f9D2A8fa7DF3` | `POOL_IMPLEMENTATION_OLD` | Ethereum | 0 | 1 | 20230816-Ethereum |
| `0x62B122A1D1ea2082c47c3Fb70e788C168E96afD8` | `POT_RATE_SOURCE` | Ethereum | 0 | 1 | 20240124-Ethereum |
| `0xA67d62f75F8D11395eE120CA8390Ab3bF01f0b8A` | `SPELL_FREEZE_ALL` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x0F9149c4d6018A5999AdA5b592E372845cfeC725` | `SPELL_FREEZE_DAI` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x216738c7B1E83cC1A1FFcD3433226B0a3B174484` | `SPELL_PAUSE_ALL` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x1B94E2F3818E1D657bE2A62D37560514b52DB17F` | `SPELL_PAUSE_DAI` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x88e6A0c2dDD26FEEb64F039a2c41296FcB3f5640` | `UNISWAP_WETH_USDC_POOL` | Ethereum | 0 | 1 | 20240905-Ethereum |
| `0xAEb6bdd95c502390db8f52c8909F703E9Af6a346` | `VAULT_FACTORY` | Ethereum | 0 | 1 | 20251002-Ethereum |
| `0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419` | `WETH_ORACLE_OLD` | Ethereum | 0 | 1 | 20240905-Ethereum |
| `0xf8dE75c7B95edB6f1E639751318f117663021Cf0` | `WHALE1` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0xAA1582084c4f588eF9BE86F5eA1a919F86A3eE57` | `WHALE2` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0xA9F30e6ED4098e9439B2ac8aEA2d3fc26BcEbb45` | `WSTETH_ORACLE_OLD` | Ethereum | 0 | 1 | 20240110-Ethereum |
| `0x7fFE42C4a5DEeA5b0feC41C94C136Cf115597227` | `_STATE_VIEW` | Spell | 0 | 1 | 20260129-Spell |
| `0x52F0E24D1c21C8A0cB1e5a5dD6198556BD9E1203` | `_V4_QUOTER` | Spell | 0 | 1 | 20260129-Spell |

### 4.4 Goerli testnet constants (18)

Goerli spells ended Sep 2023; the network itself is retired.

| Address | Name(s) | Chains | Payload uses | Test uses | Last seen |
|---|---|---|---|---|---|
| `0x11fE4B6AE13d2a6055C8D9cF65c55bac32B5d844` | `DAI` | Goerli | 4 | 2 | 20230913-Goerli |
| `0x70659BcA22A2a8BB324A526a8BB919185d3ecEBC` | `DAI_INTEREST_RATE_STRATEGY`, `NEW_DAI_INTEREST_RATE_STRATEGY`, `OLD_DAI_INTEREST_RATE_STRATEGY` | Goerli | 2 | 2 | 20230913-Goerli |
| `0x7D5afF7ab67b431cDFA6A94d50d3124cC4AB2611` | `WETH` | Goerli | 2 | 2 | 20230830-Goerli |
| `0x6E4F1e8d4c5E5E6e2781FD814EE0744cc16Eb352` | `WSTETH` | Goerli | 1 | 1 | 20230830-Goerli |
| `0xe7EA57b22D5F496BF9Ca50a7830547b704Ecb91F` | `POOL_IMPLEMENTATION`, `POOL_IMPLEMENTATION_NEW` | Goerli | 1 | 1 | 20230816-Goerli |
| `0x62BC478FFC429161115A6E4090f819CE5C50A5d9` | `RETH` | Goerli | 1 | 1 | 20230525-Goerli |
| `0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e` | `RETH_PRICE_FEED` | Goerli | 1 | 1 | 20230525-Goerli |
| `0x4e847915D8a9f2Ab0cDf2FC2FD0A30428F25665d` | `EXECUTOR` | Goerli | 0 | 3 | 20230802-Goerli |
| `0x50672F0a14B40051B65958818a7AcA3D54Bd81Af` | `MCD_POT` | Goerli | 0 | 3 | 20230816-Goerli |
| `0xB966002DDAa2Baf48369f5015329750019736031` | `MCD_VAT` | Goerli | 0 | 3 | 20230816-Goerli |
| `0xC90C99FE9B5d5207A03b9F28A6E8A19C0e558916` | `MCD_JUG` | Goerli | 0 | 2 | 20230816-Goerli |
| `0x5DCdbD3cCF9B09EAAD03bc5f50fA2B3d3ACA0121` | `PAUSE_PROXY` | Goerli | 0 | 2 | 20230802-Goerli |
| `0xD8134205b0328F5676aaeFb3B2a0DC15f4029d8C` | `SDAI` | Goerli | 0 | 2 | 20230712-Goerli |
| `0x35542cbc5730d5e39CF79dDBd8976ac984ca109b` | `A_TOKEN_IMPL` | Goerli | 0 | 1 | 20230525-Goerli |
| `0x86Bc432064d7F933184909975a384C7E4c9d0977` | `GNO` | Goerli | 0 | 1 | 20230525-Goerli |
| `0x491acea4126E48e9A354b64869AE16b2f27BE333` | `OLD_DAI_INTEREST_RATE_STRATEGY` | Goerli | 0 | 1 | 20230525-Goerli |
| `0xe0C7ec61cC47e7c02b9B24F03f75C7BC406CCA98` | `POOL_CONFIGURATOR` | Goerli | 0 | 1 | 20230525-Goerli |
| `0x6Fb5ef893d44F4f88026430d82d4ef269543cB23` | `USDC` | Goerli | 0 | 1 | 20230525-Goerli |

### 4.5 Old pool implementations (3)

| Address | Name(s) | Chains | Payload uses | Test uses | Last seen |
|---|---|---|---|---|---|
| `0x8115366Ca7Cf280a760f0bC0F6Db3026e2437115` | `POOL_IMPLEMENTATION`, `POOL_IMPLEMENTATION_NEW`, `POOL_IMPLEMENTATION_OLD` | Ethereum | 1 | 2 | 20240110-Ethereum |
| `0xa8fC41696F2a230b03F77d258Db39069e9e55F56` | `POOL_IMPLEMENTATION`, `POOL_IMPLEMENTATION_NEW` | Gnosis | 1 | 1 | 20240110-Gnosis |
| `0xB40f6d584081ac2b0FD84C846dBa3C1417889304` | `POOL_IMPLEMENTATION`, `POOL_IMPLEMENTATION_NEW` | Ethereum | 1 | 1 | 20240110-Ethereum |

### 4.6 Historical oracles, price feeds and payload artifacts (remaining candidates rejected)

- Ethereum asset oracles replaced by later configurations: `RETH_ORACLE` `0x11af...`, `WEETH_ORACLE` `0x2889...`, `WETH_ORACLE` `0xf07c...`, `WSTETH_ORACLE` `0xf77e...` (all 20240905, BTC/ETH aggregators since replaced or absorbed), `WSTETH_ORACLE` `0x8B68...` (20240110), `WEETH_PRICE_FEED` `0x1A6B...` (20240613), `CBBTC_PRICE_FEED` `0xb9ED...` (20240926) and `0xA6D6...` (20250904, superseded by the 20260312 ratio oracle), `WSTETH_PRICE_FEED` `0x48F7...` (20250904), `AGGOR_BTCUSD_ORACLE` `0x4219...`, `EZETH_ORACLE` `0x52E8...`, `RSETH_ORACLE` `0x7094...` (20250320 listing feeds), `SDAI_PRICE_FEED` `0x0c08...`, `SUSDS_PRICE_FEED` `0x27f3...` (20241017), `RETH_PRICE_FEED` `0x0522...` (20230525), 2023 stablecoin feeds `0x8fFF...`/`0x3E7d...`.
- Gnosis chain (SparkLend Gnosis wound down): all `*_PRICE_FEED` constants on Gnosis plus `GNOSIS_FORWARDER` `0x44f9...` and the Gnosis pool implementation.
- One-off cross-chain payload artifacts: five `GNOSIS_PAYLOAD` addresses, `BASE_PAYLOAD` `0x7C4b...` - deployed, executed once, dead.
- Old Sky governance plumbing from 20240110: `AUTHORITY` (old Chief), `FREEZER_MOM` (old version; registry has current at `0x237e...`), `TRANSFER_STRATEGY` `0x11aA...`.
