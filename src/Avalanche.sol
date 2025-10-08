// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library Avalanche {

    /******************************************************************************************************************/
    /*** Token Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant USDC = 0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E;

    /******************************************************************************************************************/
    /*** Bridging Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant CCTP_TOKEN_MESSENGER = 0x6B25532e1060CE10cc3B0A99e5683b91BFDe6982;

    /******************************************************************************************************************/
    /*** Spark Liquidity Layer Addresses                                                                            ***/
    /******************************************************************************************************************/

    address internal constant ALM_CONTROLLER  = 0xF89D5A7966cb1EA7b9Ab2bdb9BEC74f93d9A6C84;
    address internal constant ALM_PROXY       = 0x22dBc199F6Ac5062Eaa2D947296A9E8c23c350Bc;
    address internal constant ALM_RATE_LIMITS = 0x9046D2738dC6De100dD539970B702eE14cAa7cD3;

    address internal constant ALM_FREEZER  = 0x90D8c80C028B4C09C0d8dcAab9bbB057F0513431;
    address internal constant ALM_RELAYER  = 0x8a25A24EDE9482C4Fc0738F99611BE58F1c839AB;
    address internal constant ALM_RELAYER2 = 0x8Cc0Cb0cfB6B7e548cfd395B833c05C346534795;

    /******************************************************************************************************************/
    /*** Governance Relay Addresses                                                                                 ***/
    /******************************************************************************************************************/

    address internal constant SPARK_EXECUTOR = 0x7566DEbC906C17338524A414343fA61BcA26A843;
    address internal constant SPARK_RECEIVER = 0xd905be48983D405C6fD7f5a983D2351fb61C691F;

    /******************************************************************************************************************/
    /*** Spark Vault V2 Addresses                                                                                   ***/
    /******************************************************************************************************************/

    address internal constant SPARK_VAULT_V2_IMPL   = 0xC2C0582D1cCe30449cF561C7b9C4D6d527547F12;
    address internal constant SPARK_VAULT_V2_SPUSDC = 0x1b992302652A92611DCd5090D1Cb388C6377f455;

}
