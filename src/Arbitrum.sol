// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library Arbitrum {

    /******************************************************************************************************************/
    /*** Token Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant SUSDS = 0xdDb46999F8891663a8F2828d25298f70416d7610;
    address internal constant USDC  = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    address internal constant USDS  = 0x6491c05A82219b8D1479057361ff1654749b876b;

    /******************************************************************************************************************/
    /*** Bridging Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant CCTP_TOKEN_MESSENGER = 0x19330d10D9Cc8751218eaf51E8885D058642E08A;

    address internal constant SKY_GOV_RELAY = 0x10E6593CDda8c58a1d0f14C5164B376352a55f2F;
    address internal constant TOKEN_BRIDGE  = 0x13F7F24CA959359a4D710D32c715D4bce273C793;

    /******************************************************************************************************************/
    /*** PSM Addresses                                                                                              ***/
    /******************************************************************************************************************/

    address internal constant PSM3 = 0x2B05F8e1cACC6974fD79A673a341Fe1f58d27266;

    /******************************************************************************************************************/
    /*** Governance Relay Addresses                                                                                 ***/
    /******************************************************************************************************************/

    address internal constant SPARK_EXECUTOR = 0x65d946e533748A998B1f0E430803e39A6388f7a1;
    address internal constant SPARK_RECEIVER = 0x212871A1C235892F86cAB30E937e18c94AEd8474;

    /******************************************************************************************************************/
    /*** SSR Oracle Addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant SSR_AUTH_ORACLE             = 0xEE2816c1E1eed14d444552654Ed3027abC033A36;
    address internal constant SSR_BALANCER_RATE_PROVIDER  = 0xc0737f29b964e6fC8025F16B30f2eA4C2e2d6f22;
    address internal constant SSR_CHAINLINK_RATE_PROVIDER = 0x84AB0c8C158A1cD0d215BE2746cCa668B79cc287;
    address internal constant SSR_RECEIVER                = 0x567214Dc57a2385Abc4a756f523ddF0275305Cbc;

    /******************************************************************************************************************/
    /*** DSR Oracle Addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant DSR_AUTH_ORACLE            = 0xE206AEbca7B28e3E8d6787df00B010D4a77c32F3;
    address internal constant DSR_RECEIVER               = 0xcA61540eC2AC74E6954FA558B4aF836d95eCb91b;
    address internal constant DSR_BALANCER_RATE_PROVIDER = 0x73750DbD85753074e452B2C27fB9e3B0E75Ff3B8;

}
