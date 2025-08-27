// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library Ethereum {

    /******************************************************************************************************************/
    /*** Token Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant CBBTC  = 0xcbB7C0000aB88B473b1f5aFd9ef808440eed33Bf;
    address internal constant DAI    = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address internal constant EZETH  = 0xbf5495Efe5DB9ce00f80364C8B423567e58d2110;
    address internal constant GNO    = 0x6810e776880C02933D47DB1b9fc05908e5386b96;
    address internal constant LBTC   = 0x8236a87084f8B84306f72007F36F2618A5634494;
    address internal constant MKR    = 0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2;
    address internal constant RETH   = 0xae78736Cd615f374D3085123A210448E74Fc6393;
    address internal constant RSETH  = 0xA1290d69c65A6Fe4DF752f95823fae25cB99e5A7;
    address internal constant SDAI   = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;
    address internal constant SKY    = 0x56072C95FAA701256059aa122697B133aDEd9279;
    address internal constant SUSDC  = 0xBc65ad17c5C0a2A4D159fa5a503f4992c7B545FE;
    address internal constant SUSDE  = 0x9D39A5DE30e57443BfF2A8307A4256c8797A3497;
    address internal constant SUSDS  = 0xa3931d71877C0E7a3148CB7Eb4463524FEc27fbD;
    address internal constant TBTC   = 0x18084fbA666a33d37592fA2633fD49a74DD93a88;
    address internal constant USDC   = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address internal constant USDE   = 0x4c9EDD5852cd905f086C759E8383e09bff1E68B3;
    address internal constant USDS   = 0xdC035D45d973E3EC169d2276DDab16f1e407384F;
    address internal constant USCC   = 0x14d60E7FDC0D71d8611742720E4C50E7a974020c;
    address internal constant USDT   = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address internal constant USTB   = 0x43415eB6ff9DB7E26A15b704e7A3eDCe97d31C4e;
    address internal constant WBTC   = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
    address internal constant WEETH  = 0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee;
    address internal constant WETH   = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address internal constant WSTETH = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;

    /******************************************************************************************************************/
    /*** MakerDAO Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant CHIEF       = 0x929d9A1435662357F54AdcF64DcEE4d6b867a6f9;
    address internal constant DAI_USDS    = 0x3225737a9Bbb6473CB4a45b7244ACa2BeFdB276A;
    address internal constant PAUSE_PROXY = 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB;
    address internal constant POT         = 0x197E90f9FAD81970bA7976f33CbD77088E5D7cf7;
    address internal constant PSM         = 0xf6e72Db5454dd049d0788e411b06CfAF16853042;  // Lite PSM
    address internal constant VAT         = 0x35D1b3F3D7966A1DFe207aa4514C12a259A0492B;

    /******************************************************************************************************************/
    /*** SparkDAO Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant SPARK_PROXY   = 0x3300f198988e4C9C63F75dF86De36421f06af8c4;
    address internal constant SPK           = 0xc20059e0317DE91738d13af027DfC4a50781b066;
    address internal constant STSPK         = 0xc6132FAF04627c8d05d6E759FAbB331Ef2D8F8fD;

    address internal constant COOKIE3_REWARDS  = 0x9107F5f940226A9f21433F373A4f938228d20e1A;
    address internal constant IGNITION_REWARDS = 0xCBA0C0a2a0B6Bb11233ec4EA85C5bFfea33e724d;
    address internal constant PFL3_REWARDS     = 0x7ac96180C4d6b2A328D3a19ac059D0E7Fc3C6d41;
    address internal constant POINTS_REWARDS   = 0xe9eaE48Ed66C63fD4D12e315BC7d31Aacd89a909;
    address internal constant SPARK_REWARDS    = 0xbaf21A27622Db71041Bd336a573DDEdC8eB65122;

    /******************************************************************************************************************/
    /*** Allocation System Addresses                                                                                ***/
    /******************************************************************************************************************/

    address internal constant ALLOCATOR_BUFFER   = 0xc395D150e71378B47A1b8E9de0c1a83b75a08324;
    address internal constant ALLOCATOR_ORACLE   = 0xc7B91C401C02B73CBdF424dFaaa60950d5040dB7;
    address internal constant ALLOCATOR_REGISTRY = 0xCdCFA95343DA7821fdD01dc4d0AeDA958051bB3B;
    address internal constant ALLOCATOR_ROLES	 = 0x9A865A710399cea85dbD9144b7a09C889e94E803;
    address internal constant ALLOCATOR_VAULT	 = 0x691a6c29e9e96dd897718305427Ad5D534db16BA;

    /******************************************************************************************************************/
    /*** Spark Liquidity Layer Addresses                                                                            ***/
    /******************************************************************************************************************/

    address internal constant ALM_CONTROLLER  = 0xF8Dff673b555a225e149218C5005FC88f4a13870;
    address internal constant ALM_PROXY       = 0x1601843c5E9bC251A3272907010AFa41Fa18347E;
    address internal constant ALM_RATE_LIMITS = 0x7A5FD5cf045e010e62147F065cEAe59e5344b188;

    address internal constant ALM_FREEZER  = 0x90D8c80C028B4C09C0d8dcAab9bbB057F0513431;
    address internal constant ALM_RELAYER  = 0x8a25A24EDE9482C4Fc0738F99611BE58F1c839AB;
    address internal constant ALM_RELAYER2 = 0x8Cc0Cb0cfB6B7e548cfd395B833c05C346534795;

    /******************************************************************************************************************/
    /*** Ethena Addresses                                                                                           ***/
    /******************************************************************************************************************/

    address internal constant ETHENA_MINTER = 0xe3490297a08d6fC8Da46Edb7B6142E4F461b62D3;

    /******************************************************************************************************************/
    /*** Aave Addresses                                                                                             ***/
    /******************************************************************************************************************/

    address internal constant ATOKEN_CORE_USDS = 0x32a6268f9Ba3642Dda7892aDd74f1D34469A4259;
    address internal constant ATOKEN_CORE_USDC = 0x98C23E9d8f34FEFb1B7BD6a91B7FF122F4e16F5c;

    /******************************************************************************************************************/
    /*** Blackrock BUIDL Addresses                                                                                  ***/
    /******************************************************************************************************************/

    address internal constant BUIDL          = 0x7712c34205737192402172409a8F7ccef8aA2AEc;
    address internal constant BUIDL_REDEEM   = 0x31D3F59Ad4aAC0eeE2247c65EBE8Bf6E9E470a53;  // Circle redeem
    address internal constant BUIDLI         = 0x6a9DA2D710BB9B700acde7Cb81F10F1fF8C89041;
    address internal constant BUIDLI_DEPOSIT = 0xD1917664bE3FdAea377f6E8D5BF043ab5C3b1312;
    address internal constant BUIDLI_REDEEM  = 0x8780Dd016171B91E4Df47075dA0a947959C34200;  // Offchain redeem

    /******************************************************************************************************************/
    /*** Centrifuge Addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant JTRSY       = 0x8c213ee79581Ff4984583C6a801e5263418C4b86;
    address internal constant JTRSY_VAULT = 0x36036fFd9B1C6966ab23209E073c68Eb9A992f50;

    /******************************************************************************************************************/
    /*** Curve Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant CURVE_SUSDSUSDT = 0x00836Fe54625BE242BcFA286207795405ca4fD10;
    address internal constant CURVE_USDCUSDT  = 0x4f493B7dE8aAC7d55F71853688b1F7C8F0243C85;

    /******************************************************************************************************************/
    /*** Fluid Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant FLUID_SUSDS = 0x2BBE31d63E6813E3AC858C04dae43FB2a72B0D11;

    /******************************************************************************************************************/
    /*** Maple Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant SYRUP_USDC = 0x80ac24aA929eaF5013f6436cdA2a7ba190f5Cc0b;

    /******************************************************************************************************************/
    /*** Morpho Addresses                                                                                           ***/
    /******************************************************************************************************************/

    address internal constant MORPHO              = 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb;
    address internal constant MORPHO_DEFAULT_IRM  = 0x870aC11D48B15DB9a138Cf899d20F13F79Ba00BC;
    address internal constant MORPHO_SUSDE_ORACLE = 0x5D916980D5Ae1737a8330Bf24dF812b2911Aae25;
    address internal constant MORPHO_USDE_ORACLE  = 0xaE4750d0813B5E37A51f7629beedd72AF1f9cA35;
    address internal constant MORPHO_VAULT_DAI_1  = 0x73e65DBD630f90604062f6E02fAb9138e713edD9;
    address internal constant MORPHO_VAULT_USDS   = 0xe41a0583334f0dc4E023Acd0bFef3667F6FE0597;

    /******************************************************************************************************************/
    /*** Superstate Addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant SUPERSTATE_REDEMPTION = 0x4c21B7577C8FE8b0B0669165ee7C8f67fa1454Cf;

    /******************************************************************************************************************/
    /*** SparkLend - Core Protocol Addresses                                                                        ***/
    /******************************************************************************************************************/

    address internal constant AAVE_ORACLE                      = 0x8105f69D9C41644c6A0803fDA7D03Aa70996cFD9;
    address internal constant ACL_MANAGER                      = 0xdA135Cd78A086025BcdC87B038a1C462032b510C;
    address internal constant DAI_TREASURY                     = 0x856900aa78e856a5df1a2665eE3a66b2487cD68f;
    address internal constant EMISSION_MANAGER                 = 0xf09e48dd4CA8e76F63a57ADd428bB06fee7932a4;
    address internal constant INCENTIVES                       = 0x4370D3b6C9588E02ce9D22e684387859c7Ff5b34;
    address internal constant POOL                             = 0xC13e21B648A5Ee794902342038FF3aDAB66BE987;
    address internal constant POOL_ADDRESSES_PROVIDER          = 0x02C3eA4e34C0cBd694D2adFa2c690EECbC1793eE;
    address internal constant POOL_ADDRESSES_PROVIDER_REGISTRY = 0x03cFa0C4622FF84E50E75062683F44c9587e6Cc1;
    address internal constant POOL_CONFIGURATOR                = 0x542DBa469bdE58FAeE189ffB60C6b49CE60E0738;
    address internal constant TREASURY                         = 0xb137E7d16564c81ae2b0C8ee6B55De81dd46ECe5;
    address internal constant TREASURY_CONTROLLER              = 0x92eF091C5a1E01b3CE1ba0D0150C84412d818F7a;
    address internal constant WETH_GATEWAY                     = 0xBD7D6a9ad7865463DE44B05F04559f65e3B11704;

    /******************************************************************************************************************/
    /*** SparkLend - Reserve Token Addresses                                                                        ***/
    /******************************************************************************************************************/

    address internal constant CBBTC_DEBT_TOKEN = 0x661fE667D2103eb52d3632a3eB2cAbd123F27938;
    address internal constant CBBTC_SPTOKEN    = 0xb3973D459df38ae57797811F2A1fd061DA1BC123;

    address internal constant DAI_DEBT_TOKEN = 0xf705d2B7e92B3F38e6ae7afaDAA2fEE110fE5914;
    address internal constant DAI_SPTOKEN    = 0x4DEDf26112B3Ec8eC46e7E31EA5e123490B05B8B;

    address internal constant EZETH_DEBT_TOKEN = 0xB0B14Dd477E6159B4F3F210cF45F0954F57c0FAb;
    address internal constant EZETH_SPTOKEN    = 0xB131cD463d83782d4DE33e00e35EF034F0869bA1;

    address internal constant GNO_DEBT_TOKEN = 0x57a2957651DA467fCD4104D749f2F3684784c25a;
    address internal constant GNO_SPTOKEN    = 0x7b481aCC9fDADDc9af2cBEA1Ff2342CB1733E50F;

    address internal constant LBTC_DEBT_TOKEN = 0x096bdDFEE63F44A97cC6D2945539Ee7C8f94637D;
    address internal constant LBTC_SPTOKEN    = 0xa9d4EcEBd48C282a70CfD3c469d6C8F178a5738E;

    address internal constant PYUSD_DEBT_TOKEN = 0x3357D2DB7763D6Cd3a99f0763EbF87e0096D95f9;
    address internal constant PYUSD_SPTOKEN    = 0x779224df1c756b4EDD899854F32a53E8c2B2ce5d;

    address internal constant RETH_DEBT_TOKEN = 0xBa2C8F2eA5B56690bFb8b709438F049e5Dd76B96;
    address internal constant RETH_SPTOKEN    = 0x9985dF20D7e9103ECBCeb16a84956434B6f06ae8;

    address internal constant RSETH_DEBT_TOKEN = 0xc528F0C91CFAE4fd86A68F6Dfd4d7284707Bec68;
    address internal constant RSETH_SPTOKEN    = 0x856f1Ea78361140834FDCd0dB0b08079e4A45062;

    address internal constant SDAI_DEBT_TOKEN = 0xaBc57081C04D921388240393ec4088Aa47c6832B;
    address internal constant SDAI_SPTOKEN    = 0x78f897F0fE2d3B5690EbAe7f19862DEacedF10a7;

    address internal constant SUSDS_DEBT_TOKEN = 0x4e89b83f426fED3f2EF7Bb2d7eb5b53e288e1A13;
    address internal constant SUSDS_SPTOKEN    = 0x6715bc100A183cc65502F05845b589c1919ca3d3;

    address internal constant TBTC_DEBT_TOKEN = 0x764591dC9ba21c1B92049331b80b6E2a2acF8B17;
    address internal constant TBTC_SPTOKEN    = 0xce6Ca9cDce00a2b0c0d1dAC93894f4Bd2c960567;

    address internal constant USDC_DEBT_TOKEN = 0x7B70D04099CB9cfb1Db7B6820baDAfB4C5C70A67;
    address internal constant USDC_SPTOKEN    = 0x377C3bd93f2a2984E1E7bE6A5C22c525eD4A4815;

    address internal constant USDS_DEBT_TOKEN = 0x8c147debea24Fb98ade8dDa4bf142992928b449e;
    address internal constant USDS_SPTOKEN    = 0xC02aB1A5eaA8d1B114EF786D9bde108cD4364359;

    address internal constant USDT_DEBT_TOKEN = 0x529b6158d1D2992E3129F7C69E81a7c677dc3B12;
    address internal constant USDT_SPTOKEN    = 0xe7dF13b8e3d6740fe17CBE928C7334243d86c92f;

    address internal constant WBTC_DEBT_TOKEN = 0xf6fEe3A8aC8040C3d6d81d9A4a168516Ec9B51D2;
    address internal constant WBTC_SPTOKEN    = 0x4197ba364AE6698015AE5c1468f54087602715b2;

    address internal constant WEETH_DEBT_TOKEN = 0xc2bD6d2fEe70A0A73a33795BdbeE0368AeF5c766;
    address internal constant WEETH_SPTOKEN    = 0x3CFd5C0D4acAA8Faee335842e4f31159fc76B008;

    address internal constant WETH_DEBT_TOKEN = 0x2e7576042566f8D6990e07A1B61Ad1efd86Ae70d;
    address internal constant WETH_SPTOKEN    = 0x59cD1C87501baa753d0B5B5Ab5D8416A45cD71DB;

    address internal constant WSTETH_DEBT_TOKEN = 0xd5c3E3B566a42A6110513Ac7670C1a86D76E13E6;
    address internal constant WSTETH_SPTOKEN    = 0x12B54025C112Aa61fAce2CDB7118740875A566E9;

    /******************************************************************************************************************/
    /*** SparkLend - Auxiliary Protocol Addresses                                                                   ***/
    /******************************************************************************************************************/

    address internal constant CAP_AUTOMATOR      = 0x2276f52afba7Cf2525fd0a050DF464AC8532d0ef;
    address internal constant FREEZER_MOM        = 0x237e3985dD7E373F2ec878EC1Ac48A228Cf2e7a3;
    address internal constant KILL_SWITCH_ORACLE = 0x909A86f78e1cdEd68F9c2Fe2c9CD922c401abe82;
    address internal constant SSR_RATE_SOURCE    = 0x57027B6262083E3aC3c8B2EB99f7e8005f669973;

    /******************************************************************************************************************/
    /*** SparkLend - Emergency Spells                                                                               ***/
    /******************************************************************************************************************/

    address internal constant SPELL_FREEZE_ALL       = 0x9e2890BF7f8D5568Cc9e5092E67Ba00C8dA3E97f;
    address internal constant SPELL_FREEZE_DAI       = 0xa2039bef2c5803d66E4e68F9E23a942E350b938c;
    address internal constant SPELL_PAUSE_ALL        = 0x425b0de240b4c2DC45979DB782A355D090Dc4d37;
    address internal constant SPELL_PAUSE_DAI        = 0xCacB88e39112B56278db25b423441248cfF94241;
    address internal constant SPELL_REMOVE_MULTISIG  = 0xE47AB4919F6F5459Dcbbfbe4264BD4630c0169A9;

    /******************************************************************************************************************/
    /*** SparkLend - Implementation Addresses                                                                       ***/
    /******************************************************************************************************************/

    address internal constant A_TOKEN_IMPL             = 0x6175ddEc3B9b38c88157C10A01ed4A3fa8639cC6;
    address internal constant DAI_TREASURY_IMPL        = 0xF1E57711Eb5F897b415de1aEFCB64d9BAe58D312;
    address internal constant INCENTIVES_IMPL          = 0x0ee554F6A1f7a4Cb4f82D4C124DdC2AD3E37fde1;
    address internal constant POOL_CONFIGURATOR_IMPL   = 0xF7b656C95420194b79687fc86D965FB51DA4799F;
    address internal constant POOL_IMPL                = 0x5aE329203E00f76891094DcfedD5Aca082a50e1b;
    address internal constant STABLE_DEBT_TOKEN_IMPL   = 0x026a5B6114431d8F3eF2fA0E1B2EDdDccA9c540E;
    address internal constant TREASURY_IMPL            = 0xF1E57711Eb5F897b415de1aEFCB64d9BAe58D312;
    address internal constant VARIABLE_DEBT_TOKEN_IMPL = 0x86C71796CcDB31c3997F8Ec5C2E3dB3e9e40b985;

    /******************************************************************************************************************/
    /*** SparkLend - Config Engine Addresses                                                                        ***/
    /******************************************************************************************************************/

    address internal constant CONFIG_ENGINE             = 0x3254F7cd0565aA67eEdC86c2fB608BE48d5cCd78;
    address internal constant PROXY_ADMIN               = 0x883A82BDd3d07ae6ACfD151020faD350df25087e;
    address internal constant RATES_FACTORY             = 0xfE57e187EF6285e90d7049e6a21571aa47cF11a2;
    address internal constant TRANSPARENT_PROXY_FACTORY = 0x777803CbDD89D5D5Bc1DdD2151B51b0B07F6bf37;

    /******************************************************************************************************************/
    /*** SparkLend - Data Provider Addresses                                                                        ***/
    /******************************************************************************************************************/

    address internal constant PROTOCOL_DATA_PROVIDER     = 0xFc21d6d146E6086B8359705C8b28512a983db0cb;
    address internal constant UI_INCENTIVE_DATA_PROVIDER = 0xA7F8A757C4f7696c015B595F51B2901AC0121B18;
    address internal constant UI_POOL_DATA_PROVIDER      = 0xF028c2F4b19898718fD0F77b9b881CbfdAa5e8Bb;
    address internal constant WALLET_BALANCE_PROVIDER    = 0xd2AeF86F51F92E8e49F42454c287AE4879D1BeDc;

    /******************************************************************************************************************/
    /*** SparkLend - Library Addresses                                                                              ***/
    /******************************************************************************************************************/

    address internal constant BORROW_LOGIC      = 0x4662C88C542F0954F8CccCDE4542eEc32d7E7e9a;
    address internal constant BRIDGE_LOGIC      = 0x2C54924711E479E639032704146b865E12f0C6D1;
    address internal constant EMODE_LOGIC       = 0x2Ad00613A66D71Ff2B0607fB3C4632C47a50DADe;
    address internal constant FLASH_LOAN_LOGIC  = 0x7f44e1c1dE70059D7cc483378BEFeE2a030CE247;
    address internal constant LIQUIDATION_LOGIC = 0x6aEa92693C527bC2c7B3171C6f2598d67d619088;
    address internal constant POOL_LOGIC        = 0x1761a0f74032963B6Ad0774C5EBF4586c0bD7604;
    address internal constant SUPPLY_LOGIC      = 0x46256841e36b7557BB8e4c706beD38b17A9EB2c1;

    /******************************************************************************************************************/
    /*** Cross-Domain Addresses                                                                                     ***/
    /******************************************************************************************************************/

    address internal constant CCTP_TOKEN_MESSENGER = 0xBd3fa81B58Ba92a82136038B25aDec7066af3155;

    address internal constant WORLD_CHAIN_DSR_FORWARDER = 0xA34437dAAE56A7CC6DC757048933D7777b3e547B;

    /******************************************************************************************************************/
    /*** Arbitrum Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant ARBITRUM_DSR_FORWARDER = 0x7F36E7F562Ee3f320644F6031e03E12a02B85799;
    address internal constant ARBITRUM_SSR_FORWARDER = 0x1A229AdbAC83A948226783F2A3257B52006247D5;

    address internal constant ARBITRUM_ESCROW        = 0xA10c7CE4b876998858b1a9E12b10092229539400;
    address internal constant ARBITRUM_SKY_GOV_RELAY = 0x9ba25c289e351779E0D481Ba37489317c34A899d;
    address internal constant ARBITRUM_TOKEN_BRIDGE  = 0x84b9700E28B23F873b82c1BEb23d86C091b6079E;

    /******************************************************************************************************************/
    /*** Base Addresses                                                                                             ***/
    /******************************************************************************************************************/

    address internal constant BASE_DSR_FORWARDER = 0x8Ed551D485701fe489c215E13E42F6fc59563e0e;
    address internal constant BASE_SSR_FORWARDER = 0xB2833392527f41262eB0E3C7b47AFbe030ef188E;

    address internal constant BASE_ESCROW        = 0x7F311a4D48377030bD810395f4CCfC03bdbe9Ef3;
    address internal constant BASE_SKY_GOV_RELAY = 0x1Ee0AE8A993F2f5abDB51EAF4AC2876202b65c3b;
    address internal constant BASE_TOKEN_BRIDGE  = 0xA5874756416Fa632257eEA380CAbd2E87cED352A;

    /******************************************************************************************************************/
    /*** Optimism Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant OPTIMISM_DSR_FORWARDER = 0x4042127DecC0cF7cc0966791abebf7F76294DeF3;
    address internal constant OPTIMISM_SSR_FORWARDER = 0x6Ac25B8638767a3c27a65597A74792d599038724;

    address internal constant OPTIMISM_ESCROW        = 0x467194771dAe2967Aef3ECbEDD3Bf9a310C76C65;
    address internal constant OPTIMISM_SKY_GOV_RELAY = 0x09B354CDA89203BB7B3131CC728dFa06ab09Ae2F;
    address internal constant OPTIMISM_TOKEN_BRIDGE  = 0x3d25B7d486caE1810374d37A48BCf0963c9B8057;

    /******************************************************************************************************************/
    /*** Unichain Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant UNICHAIN_SSR_FORWARDER = 0x45d91340B3B7B96985A72b5c678F7D9e8D664b62;

    address internal constant UNICHAIN_ESCROW        = 0x1196F688C585D3E5C895Ef8954FFB0dCDAfc566A;
    address internal constant UNICHAIN_SKY_GOV_RELAY = 0xb383070Cf9F4f01C3a2cfD0ef6da4BC057b429b7;
    address internal constant UNICHAIN_TOKEN_BRIDGE  = 0xDF0535a4C96c9Cd8921d8FeC92A7680b281681d2;

    /******************************************************************************************************************/
    /*** Multisigs                                                                                                  ***/
    /******************************************************************************************************************/

    address internal constant FREEZER_MULTISIG           = 0x44efFc473e81632B12486866AA1678edbb7BEeC3;
    address internal constant SPARKLEND_REWARDS_MULTISIG = 0x8076807464DaC94Ac8Aa1f7aF31b58F73bD88A27;
    address internal constant SPARK_REWARDS_MULTISIG     = 0xF649956f43825d4d7295a50EDdBe1EDC814A3a83;
    address internal constant SPK_COMPANY_MULTISIG       = 0x6FE588FDCC6A34207485cc6e47673F59cCEDF92B;
    address internal constant SPK_BRIDGING_MULTISIG      = 0x7a27a9f2A823190140cfb4027f4fBbfA438bac79;

    /******************************************************************************************************************/
    /*** User Action Addresses                                                                                      ***/
    /******************************************************************************************************************/

    address internal constant USER_ACTIONS_PSM_VARIANT1 = 0x52d298Ff9e77E71C2EB1992260520E7b15257d99;

}
