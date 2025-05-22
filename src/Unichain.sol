// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library Unichain {

    /******************************************************************************************************************/
    /*** Token Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant SUSDC = 0x1fcc6BdFb541580D39E57d0531Ab0F68d0914C79;
    address internal constant SUSDS = 0xA06b10Db9F390990364A3984C04FaDf1c13691b5;
    address internal constant USDC  = 0x078D782b760474a361dDA0AF3839290b0EF57AD6;
    address internal constant USDS  = 0x7E10036Acc4B56d4dFCa3b77810356CE52313F9C;

    /******************************************************************************************************************/
    /*** Bridging Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant CCTP_TOKEN_MESSENGER = 0x4e744b28E787c3aD0e810eD65A24461D4ac5a762;
    address internal constant SKY_GOV_RELAY        = 0x3510a7F16F549EcD0Ef018DE0B3c2ad7c742990f;
    address internal constant TOKEN_BRIDGE         = 0xa13152006D0216Fe4627a0D3B006087A6a55D752;

    /******************************************************************************************************************/
    /*** PSM Addresses                                                                                              ***/
    /******************************************************************************************************************/

    address internal constant PSM3 = 0x7b42Ed932f26509465F7cE3FAF76FfCe1275312f;

    /******************************************************************************************************************/
    /*** Spark Liquidity Layer Addresses                                                                            ***/
    /******************************************************************************************************************/

    address internal constant ALM_CONTROLLER  = 0x9B1BEB11CFE05117029a30eb799B6586125321FF;
    address internal constant ALM_PROXY       = 0x345E368fcCd62266B3f5F37C9a131FD1c39f5869;
    address internal constant ALM_RATE_LIMITS = 0x5A1a44D2192Dd1e21efB9caA50E32D0716b35535;

    address internal constant ALM_FREEZER  = 0x90D8c80C028B4C09C0d8dcAab9bbB057F0513431;
    address internal constant ALM_RELAYER  = 0x8a25A24EDE9482C4Fc0738F99611BE58F1c839AB;
    address internal constant ALM_RELAYER2 = 0x8Cc0Cb0cfB6B7e548cfd395B833c05C346534795;

    /******************************************************************************************************************/
    /*** Governance Relay Addresses                                                                                 ***/
    /******************************************************************************************************************/

    address internal constant SPARK_EXECUTOR = 0xb037C43b433964A2017cd689f535BEb6B0531473;
    address internal constant SPARK_RECEIVER = 0x7B8ee8b0fD62662F7FB1ac9e5E6cEAad5195A3bF;

    /******************************************************************************************************************/
    /*** SSR Oracle Addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant SSR_AUTH_ORACLE             = 0x1566BFA55D95686a823751298533D42651183988;
    address internal constant SSR_BALANCER_RATE_PROVIDER  = 0x93c81ADc7F98FdBC8C7a15eCBeD312c8F6adbcB3;
    address internal constant SSR_CHAINLINK_RATE_PROVIDER = 0x7ac96180C4d6b2A328D3a19ac059D0E7Fc3C6d41;
    address internal constant SSR_RECEIVER                = 0x4A71f81C6109230932978bAB7CA746f0be0C4580;

}
