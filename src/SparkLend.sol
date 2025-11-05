// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library SparkLend {

    /******************************************************************************************************************/
    /*** Core protocol addresses                                                                                    ***/
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
    /*** Reserve token addresses                                                                                    ***/
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
    /*** Auxiliary protocol addresses                                                                               ***/
    /******************************************************************************************************************/

    address internal constant CAP_AUTOMATOR      = 0x2276f52afba7Cf2525fd0a050DF464AC8532d0ef;
    address internal constant FREEZER_MOM        = 0x237e3985dD7E373F2ec878EC1Ac48A228Cf2e7a3;
    address internal constant KILL_SWITCH_ORACLE = 0x909A86f78e1cdEd68F9c2Fe2c9CD922c401abe82;
    address internal constant SSR_RATE_SOURCE    = 0x57027B6262083E3aC3c8B2EB99f7e8005f669973;

    /******************************************************************************************************************/
    /*** Implementation addresses                                                                                   ***/
    /******************************************************************************************************************/

    address internal constant A_TOKEN_IMPL             = 0x6175ddEc3B9b38c88157C10A01ed4A3fa8639cC6;
    address internal constant INCENTIVES_IMPL          = 0x0ee554F6A1f7a4Cb4f82D4C124DdC2AD3E37fde1;
    address internal constant POOL_CONFIGURATOR_IMPL   = 0xF7b656C95420194b79687fc86D965FB51DA4799F;
    address internal constant POOL_IMPL                = 0x5aE329203E00f76891094DcfedD5Aca082a50e1b;
    address internal constant STABLE_DEBT_TOKEN_IMPL   = 0x026a5B6114431d8F3eF2fA0E1B2EDdDccA9c540E;
    address internal constant TREASURY_IMPL            = 0xF1E57711Eb5F897b415de1aEFCB64d9BAe58D312;
    address internal constant VARIABLE_DEBT_TOKEN_IMPL = 0x86C71796CcDB31c3997F8Ec5C2E3dB3e9e40b985;

    /******************************************************************************************************************/
    /*** ConfigEngine addresses                                                                                     ***/
    /******************************************************************************************************************/

    address internal constant CONFIG_ENGINE             = 0x3254F7cd0565aA67eEdC86c2fB608BE48d5cCd78;
    address internal constant PROXY_ADMIN               = 0x883A82BDd3d07ae6ACfD151020faD350df25087e;
    address internal constant RATES_FACTORY             = 0xfE57e187EF6285e90d7049e6a21571aa47cF11a2;
    address internal constant TRANSPARENT_PROXY_FACTORY = 0x777803CbDD89D5D5Bc1DdD2151B51b0B07F6bf37;

    /******************************************************************************************************************/
    /*** Data provider addresses                                                                                    ***/
    /******************************************************************************************************************/

    address internal constant PROTOCOL_DATA_PROVIDER     = 0xFc21d6d146E6086B8359705C8b28512a983db0cb;
    address internal constant UI_INCENTIVE_DATA_PROVIDER = 0xA7F8A757C4f7696c015B595F51B2901AC0121B18;
    address internal constant UI_POOL_DATA_PROVIDER      = 0xF028c2F4b19898718fD0F77b9b881CbfdAa5e8Bb;
    address internal constant WALLET_BALANCE_PROVIDER    = 0xd2AeF86F51F92E8e49F42454c287AE4879D1BeDc;

    /******************************************************************************************************************/
    /*** Library addresses                                                                                          ***/
    /******************************************************************************************************************/

    address internal constant BORROW_LOGIC      = 0x4662C88C542F0954F8CccCDE4542eEc32d7E7e9a;
    address internal constant BRIDGE_LOGIC      = 0x2C54924711E479E639032704146b865E12f0C6D1;
    address internal constant EMODE_LOGIC       = 0x2Ad00613A66D71Ff2B0607fB3C4632C47a50DADe;
    address internal constant FLASH_LOAN_LOGIC  = 0x7f44e1c1dE70059D7cc483378BEFeE2a030CE247;
    address internal constant LIQUIDATION_LOGIC = 0x6aEa92693C527bC2c7B3171C6f2598d67d619088;
    address internal constant POOL_LOGIC        = 0x1761a0f74032963B6Ad0774C5EBF4586c0bD7604;
    address internal constant SUPPLY_LOGIC      = 0x46256841e36b7557BB8e4c706beD38b17A9EB2c1;

}
