// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library Ethereum {

    /*******************************************************************************************************************

    ███████╗██████╗  █████╗ ██████╗ ██╗  ██╗     █████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ██████╗ ███████╗██████╗
    ██╔════╝██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝    ██╔══██╗██║   ██║╚══██╔══╝██║  ██║██╔═══██╗██╔══██╗██╔════╝██╔══██╗
    ███████╗██████╔╝███████║██████╔╝█████╔╝     ███████║██║   ██║   ██║   ███████║██║   ██║██████╔╝█████╗  ██║  ██║
    ╚════██║██╔═══╝ ██╔══██║██╔══██╗██╔═██╗     ██╔══██╗██║   ██║   ██║   ██╔══██║██║   ██║██╔══██╗██╔══╝  ██║  ██║
    ███████║██║     ██║  ██║██║  ██║██║  ██╗    ██║  ██║╚██████╔╝   ██║   ██║  ██║╚██████╔╝██║  ██║███████╗██████╔╝
    ╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝

    /******************************************************************************************************************/
    /*** Spark DAO addresses                                                                                        ***/
    /******************************************************************************************************************/

    address internal constant SPARK_PROXY = 0x3300f198988e4C9C63F75dF86De36421f06af8c4;
    address internal constant SPK         = 0xc20059e0317DE91738d13af027DfC4a50781b066;
    address internal constant STSPK       = 0xc6132FAF04627c8d05d6E759FAbB331Ef2D8F8fD;

    /******************************************************************************************************************/
    /*** Spark Liquidity Layer addresses                                                                            ***/
    /******************************************************************************************************************/

    address internal constant ALM_CONTROLLER  = 0x577Fa18a498e1775939b668B0224A5e5a1e56fc3;
    address internal constant ALM_PROXY       = 0x1601843c5E9bC251A3272907010AFa41Fa18347E;
    address internal constant ALM_RATE_LIMITS = 0x7A5FD5cf045e010e62147F065cEAe59e5344b188;

    /******************************************************************************************************************/
    /*** Spark Vault V2 addresses                                                                                   ***/
    /******************************************************************************************************************/

    address internal constant SPARK_VAULT_V2_IMPL   = 0x1b992302652A92611DCd5090D1Cb388C6377f455;
    address internal constant SPARK_VAULT_V2_SPUSDC = 0x28B3a8fb53B741A8Fd78c0fb9A6B2393d896a43d;
    address internal constant SPARK_VAULT_V2_SPUSDT = 0xe2e7a17dFf93280dec073C995595155283e3C372;
    address internal constant SPARK_VAULT_V2_SPETH  = 0xfE6eb3b609a7C8352A241f7F3A21CEA4e9209B8f;

    /******************************************************************************************************************/
    /*** SSR/DSR crosschain forwarders                                                                              ***/
    /******************************************************************************************************************/

    address internal constant ARBITRUM_DSR_FORWARDER    = 0x7F36E7F562Ee3f320644F6031e03E12a02B85799;
    address internal constant ARBITRUM_SSR_FORWARDER    = 0x1A229AdbAC83A948226783F2A3257B52006247D5;
    address internal constant BASE_DSR_FORWARDER        = 0x8Ed551D485701fe489c215E13E42F6fc59563e0e;
    address internal constant BASE_SSR_FORWARDER        = 0xB2833392527f41262eB0E3C7b47AFbe030ef188E;
    address internal constant OPTIMISM_DSR_FORWARDER    = 0x4042127DecC0cF7cc0966791abebf7F76294DeF3;
    address internal constant OPTIMISM_SSR_FORWARDER    = 0x6Ac25B8638767a3c27a65597A74792d599038724;
    address internal constant UNICHAIN_SSR_FORWARDER    = 0x45d91340B3B7B96985A72b5c678F7D9e8D664b62;
    address internal constant WORLD_CHAIN_DSR_FORWARDER = 0xA34437dAAE56A7CC6DC757048933D7777b3e547B;

    /******************************************************************************************************************/
    /*** SparkLend emergency spells                                                                                 ***/
    /******************************************************************************************************************/

    address internal constant SPELL_FREEZE_ALL = 0x9e2890BF7f8D5568Cc9e5092E67Ba00C8dA3E97f;
    address internal constant SPELL_FREEZE_DAI = 0xa2039bef2c5803d66E4e68F9E23a942E350b938c;
    address internal constant SPELL_PAUSE_ALL  = 0x425b0de240b4c2DC45979DB782A355D090Dc4d37;
    address internal constant SPELL_PAUSE_DAI  = 0xCacB88e39112B56278db25b423441248cfF94241;

    /******************************************************************************************************************/
    /*** Rewards addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant COOKIE3_REWARDS  = 0x9107F5f940226A9f21433F373A4f938228d20e1A;
    address internal constant IGNITION_REWARDS = 0xCBA0C0a2a0B6Bb11233ec4EA85C5bFfea33e724d;
    address internal constant PFL3_REWARDS     = 0x7ac96180C4d6b2A328D3a19ac059D0E7Fc3C6d41;
    address internal constant POINTS_REWARDS   = 0xe9eaE48Ed66C63fD4D12e315BC7d31Aacd89a909;
    address internal constant SPARK_REWARDS    = 0xbaf21A27622Db71041Bd336a573DDEdC8eB65122;

    /******************************************************************************************************************/
    /*** Miscellaneous addresses                                                                                      */
    /******************************************************************************************************************/

    address internal constant USER_ACTIONS_PSM_VARIANT1 = 0x52d298Ff9e77E71C2EB1992260520E7b15257d99;

    /*******************************************************************************************************************

    ███████╗██████╗  █████╗ ██████╗ ██╗  ██╗    ███╗   ███╗ █████╗ ███╗   ██╗ █████╗  ██████╗ ███████╗██████╗
    ██╔════╝██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝    ████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝ ██╔════╝██╔══██╗
    ███████╗██████╔╝███████║██████╔╝█████╔╝     ██╔████╔██║███████║██╔██╗ ██║███████║██║  ███╗█████╗  ██╔══██╗
    ╚════██║██╔═══╝ ██╔══██║██╔══██╗██╔═██╗     ██║╚██╔╝██║██╔══██║██║╚██╗██║██╔══██║██║   ██║██╔══╝  ██║  ██║
    ███████║██║     ██║  ██║██║  ██║██║  ██╗    ██║ ╚═╝ ██║██║  ██║██║ ╚████║██║  ██║╚██████╔╝███████╗██████╔╝
    ╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═════╝

    /******************************************************************************************************************/
    /*** Multisigs                                                                                                  ***/
    /******************************************************************************************************************/

    // TODO: Change all of these to _MULTISIG

    address internal constant ALM_OPS_MULTISIG           = 0x2E1b01adABB8D4981863394bEa23a1263CBaeDfC;
    address internal constant SPARKLEND_FREEZER_MULTISIG = 0x44efFc473e81632B12486866AA1678edbb7BEeC3;
    address internal constant SPARKLEND_REWARDS_MULTISIG = 0x8076807464DaC94Ac8Aa1f7aF31b58F73bD88A27;
    address internal constant SPARK_REWARDS_MULTISIG     = 0xF649956f43825d4d7295a50EDdBe1EDC814A3a83;
    address internal constant SPK_COMPANY_MULTISIG       = 0x6FE588FDCC6A34207485cc6e47673F59cCEDF92B;
    address internal constant SPK_BRIDGING_MULTISIG      = 0x7a27a9f2A823190140cfb4027f4fBbfA438bac79;
    address internal constant SPELL_REMOVE_MULTISIG      = 0xE47AB4919F6F5459Dcbbfbe4264BD4630c0169A9;

    address internal constant ALM_FREEZER  = 0x90D8c80C028B4C09C0d8dcAab9bbB057F0513431;
    address internal constant ALM_RELAYER  = 0x8a25A24EDE9482C4Fc0738F99611BE58F1c839AB;
    address internal constant ALM_RELAYER2 = 0x8Cc0Cb0cfB6B7e548cfd395B833c05C346534795;

    address internal constant SPARK_FOUNDATION = 0x92e4629a4510AF5819d7D1601464C233599fF5ec;

    /******************************************************************************************************************/
    /*** Morpho Vaults                                                                                              ***/
    /******************************************************************************************************************/

    address internal constant MORPHO_VAULT_USDC_BC = 0x56A76b428244a50513ec81e225a293d128fd581D;
    address internal constant MORPHO_VAULT_DAI_1   = 0x73e65DBD630f90604062f6E02fAb9138e713edD9;
    address internal constant MORPHO_VAULT_USDS    = 0xe41a0583334f0dc4E023Acd0bFef3667F6FE0597;

    /*******************************************************************************************************************

    ███████╗██╗  ██╗████████╗███████╗██████╗ ███╗   ██╗ █████╗ ██╗
    ██╔════╝╚██╗██╔╝╚══██╔══╝██╔════╝██╔══██╗████╗  ██║██╔══██╗██║
    █████╗   ╚███╔╝    ██║   █████╗  ██████╔╝██╔██╗ ██║███████║██║
    ██╔══╝   ██╔██╗    ██║   ██╔══╝  ██╔══██╗██║╚██╗██║██╔══██║██║
    ███████╗██╔╝ ██╗   ██║   ███████╗██║  ██║██║ ╚████║██║  ██║███████╗
    ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝

    /******************************************************************************************************************/
    /*** Token addresses                                                                                            ***/
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
    /*** Sky addresses                                                                                               ***/
    /******************************************************************************************************************/

    address internal constant CHIEF       = 0x929d9A1435662357F54AdcF64DcEE4d6b867a6f9;
    address internal constant DAI_USDS    = 0x3225737a9Bbb6473CB4a45b7244ACa2BeFdB276A;
    address internal constant PAUSE_PROXY = 0xBE8E3e3618f7474F8cB1d074A26afFef007E98FB;
    address internal constant POT         = 0x197E90f9FAD81970bA7976f33CbD77088E5D7cf7;
    address internal constant PSM         = 0xf6e72Db5454dd049d0788e411b06CfAF16853042;  // Lite PSM
    address internal constant VAT         = 0x35D1b3F3D7966A1DFe207aa4514C12a259A0492B;

    address internal constant USDS_SPK_FARM = 0x173e314C7635B45322cd8Cb14f44b312e079F3af;

    address internal constant ALLOCATOR_BUFFER   = 0xc395D150e71378B47A1b8E9de0c1a83b75a08324;
    address internal constant ALLOCATOR_ORACLE   = 0xc7B91C401C02B73CBdF424dFaaa60950d5040dB7;
    address internal constant ALLOCATOR_REGISTRY = 0xCdCFA95343DA7821fdD01dc4d0AeDA958051bB3B;
    address internal constant ALLOCATOR_ROLES	 = 0x9A865A710399cea85dbD9144b7a09C889e94E803;
    address internal constant ALLOCATOR_VAULT	 = 0x691a6c29e9e96dd897718305427Ad5D534db16BA;

    /******************************************************************************************************************/
    /*** Cross-chain addresses                                                                                      ***/
    /******************************************************************************************************************/

    address internal constant CCTP_TOKEN_MESSENGER = 0xBd3fa81B58Ba92a82136038B25aDec7066af3155;

    address internal constant ARBITRUM_ESCROW        = 0xA10c7CE4b876998858b1a9E12b10092229539400;
    address internal constant ARBITRUM_SKY_GOV_RELAY = 0x9ba25c289e351779E0D481Ba37489317c34A899d;
    address internal constant ARBITRUM_TOKEN_BRIDGE  = 0x84b9700E28B23F873b82c1BEb23d86C091b6079E;

    address internal constant BASE_ESCROW        = 0x7F311a4D48377030bD810395f4CCfC03bdbe9Ef3;
    address internal constant BASE_SKY_GOV_RELAY = 0x1Ee0AE8A993F2f5abDB51EAF4AC2876202b65c3b;
    address internal constant BASE_TOKEN_BRIDGE  = 0xA5874756416Fa632257eEA380CAbd2E87cED352A;

    address internal constant OPTIMISM_ESCROW        = 0x467194771dAe2967Aef3ECbEDD3Bf9a310C76C65;
    address internal constant OPTIMISM_SKY_GOV_RELAY = 0x09B354CDA89203BB7B3131CC728dFa06ab09Ae2F;
    address internal constant OPTIMISM_TOKEN_BRIDGE  = 0x3d25B7d486caE1810374d37A48BCf0963c9B8057;

    address internal constant UNICHAIN_ESCROW        = 0x1196F688C585D3E5C895Ef8954FFB0dCDAfc566A;
    address internal constant UNICHAIN_SKY_GOV_RELAY = 0xb383070Cf9F4f01C3a2cfD0ef6da4BC057b429b7;
    address internal constant UNICHAIN_TOKEN_BRIDGE  = 0xDF0535a4C96c9Cd8921d8FeC92A7680b281681d2;

    /******************************************************************************************************************/
    /*** Aave addresses                                                                                             ***/
    /******************************************************************************************************************/

    address internal constant ATOKEN_CORE_USDC  = 0x98C23E9d8f34FEFb1B7BD6a91B7FF122F4e16F5c;
    address internal constant ATOKEN_CORE_USDE  = 0x4F5923Fc5FD4a93352581b38B7cD26943012DECF;
    address internal constant ATOKEN_CORE_USDS  = 0x32a6268f9Ba3642Dda7892aDd74f1D34469A4259;
    address internal constant ATOKEN_CORE_USDT  = 0x23878914EFE38d27C4D67Ab83ed1b93A74D4086a;
    address internal constant ATOKEN_PRIME_USDS = 0x09AA30b182488f769a9824F15E6Ce58591Da4781;

    /******************************************************************************************************************/
    /*** Blackrock BUIDL addresses                                                                                  ***/
    /******************************************************************************************************************/

    address internal constant BUIDL          = 0x7712c34205737192402172409a8F7ccef8aA2AEc;
    address internal constant BUIDL_REDEEM   = 0x31D3F59Ad4aAC0eeE2247c65EBE8Bf6E9E470a53;  // Circle redeem
    address internal constant BUIDLI         = 0x6a9DA2D710BB9B700acde7Cb81F10F1fF8C89041;
    address internal constant BUIDLI_DEPOSIT = 0xD1917664bE3FdAea377f6E8D5BF043ab5C3b1312;
    address internal constant BUIDLI_REDEEM  = 0x8780Dd016171B91E4Df47075dA0a947959C34200;  // Offchain redeem

    /******************************************************************************************************************/
    /*** Centrifuge addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant JTRSY       = 0x8c213ee79581Ff4984583C6a801e5263418C4b86;
    address internal constant JTRSY_VAULT = 0x36036fFd9B1C6966ab23209E073c68Eb9A992f50;

    /******************************************************************************************************************/
    /*** Curve addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant CURVE_STABLESWAP_FACTORY = 0x6A8cbed756804B16E05E741eDaBd5cB544AE21bf;

    address internal constant CURVE_SUSDSUSDT = 0x00836Fe54625BE242BcFA286207795405ca4fD10;
    address internal constant CURVE_USDCUSDT  = 0x4f493B7dE8aAC7d55F71853688b1F7C8F0243C85;
    address internal constant CURVE_PYUSDUSDC = 0x383E6b4437b59fff47B619CBA855CA29342A8559;
    address internal constant CURVE_PYUSDUSDS = 0xA632D59b9B804a956BfaA9b48Af3A1b74808FC1f;

    /******************************************************************************************************************/
    /*** Ethena addresses                                                                                           ***/
    /******************************************************************************************************************/

    address internal constant ETHENA_MINTER = 0xe3490297a08d6fC8Da46Edb7B6142E4F461b62D3;

    /******************************************************************************************************************/
    /*** Fluid addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant FLUID_SUSDS = 0x2BBE31d63E6813E3AC858C04dae43FB2a72B0D11;

    /******************************************************************************************************************/
    /*** Lido addresses                                                                                             ***/
    /******************************************************************************************************************/

    address internal constant WSTETH_WITHDRAW_QUEUE = 0x889edC2eDab5f40e902b864aD4d7AdE8E412F9B1;

    /******************************************************************************************************************/
    /*** Maple addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant SYRUP_USDC = 0x80ac24aA929eaF5013f6436cdA2a7ba190f5Cc0b;

    /******************************************************************************************************************/
    /*** Morpho addresses                                                                                           ***/
    /******************************************************************************************************************/

    address internal constant MORPHO               = 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb;
    address internal constant MORPHO_DEFAULT_IRM   = 0x870aC11D48B15DB9a138Cf899d20F13F79Ba00BC;
    address internal constant MORPHO_FACTORY       = 0x1897A8997241C1cD4bD0698647e4EB7213535c24;
    address internal constant MORPHO_SUSDE_ORACLE  = 0x5D916980D5Ae1737a8330Bf24dF812b2911Aae25;
    address internal constant MORPHO_TOKEN         = 0x58D97B57BB95320F9a05dC918Aef65434969c2B2;
    address internal constant MORPHO_USDE_ORACLE   = 0xaE4750d0813B5E37A51f7629beedd72AF1f9cA35;

    /******************************************************************************************************************/
    /*** Superstate addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant SUPERSTATE_REDEMPTION = 0x4c21B7577C8FE8b0B0669165ee7C8f67fa1454Cf;

}
