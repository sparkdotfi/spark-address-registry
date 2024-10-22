// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.8.0;

library Base {

    /******************************************************************************************************************/
    /*** Token Addresses                                                                                            ***/
    /******************************************************************************************************************/

    address internal constant SKY        = 0x60e3c701e65DEE30c23c9Fb78c3866479cc0944a;
    address internal constant SUSDS	     = 0x5875eEE11Cf8398102FdAd704C9E96607675467a;
    address internal constant SUSDS_IMPL = 0x982f2DF63Fe38AB8d55f4B1464e8cfDc8eA5dEC8;
    address internal constant USDC       = 0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913;
    address internal constant USDS	     = 0x820C137fa70C8691f0e44Dc420a5e53c168921Dc;
    address internal constant USDS_IMPL	 = 0x191CD41681a3fE15aa15a0bec415821CE24CAd5e;

    /******************************************************************************************************************/
    /*** Bridging Addresses                                                                                         ***/
    /******************************************************************************************************************/

    address internal constant CCTP_TOKEN_MESSENGER = 0x1682Ae6375C4E4A97e4B583BC394c861A46D8962;

    address internal constant L2_BRIDGE	      = 0xee44cdb68D618d58F75d9fe0818B640BD7B8A7B7;
    address internal constant L2_BRIDGE_IMPL  = 0x289A37BE5D6CCeF7A8f2b90535B3BB6bD3905f72;
    address internal constant L2_BRIDGE_SPELL = 0x6f29C3A29A3F056A71FB0714551C8D3547268D62;
    address internal constant L2_GOV_RELAY	  = 0xdD0BCc201C9E47c6F6eE68E4dB05b652Bb6aC255;

    /******************************************************************************************************************/
    /*** Governance Relay Addresses                                                                                 ***/
    /******************************************************************************************************************/

    address internal constant SPARK_EXECUTOR = 0xF93B7122450A50AF3e5A76E1d546e95Ac1d0F579;
    address internal constant SPARK_RECEIVER = 0xfda082e00EF89185d9DB7E5DcD8c5505070F5A3B;

    /******************************************************************************************************************/
    /*** SSR Oracle Addresses                                                                                       ***/
    /******************************************************************************************************************/

    address internal constant SSR_AUTH_ORACLE            = 0x65d946e533748A998B1f0E430803e39A6388f7a1;
    address internal constant SSR_RECEIVER               = 0x212871A1C235892F86cAB30E937e18c94AEd8474;
    address internal constant SSR_BALANCER_RATE_PROVIDER = 0x49aF4eE75Ae62C2229bb2486a59Aa1a999f050f0;

    /******************************************************************************************************************/
    /*** DSR Oracle Addresses (Legacy)                                                                              ***/
    /******************************************************************************************************************/

    address internal constant DSR_AUTH_ORACLE            = 0x2Dd2a2Fe346B5704380EfbF6Bd522042eC3E8FAe;
    address internal constant DSR_RECEIVER               = 0xaDEAf02Ddb5Bed574045050B8096307bE66E0676;
    address internal constant DSR_BALANCER_RATE_PROVIDER = 0xeC0C14Ea7fF20F104496d960FDEBF5a0a0cC14D0;

}
