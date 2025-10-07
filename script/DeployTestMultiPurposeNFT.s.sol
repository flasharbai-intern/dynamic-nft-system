// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/onchain/TestMultiPurposeNFT.sol";

contract DeployTestMultiPurposeNFT is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        // Deploy the TestDynamicNFT contract
        TestMultiPurposeNFT nft = new TestMultiPurposeNFT();

        vm.stopBroadcast();

        console.log("TestMultiPurposeNFT deployed to:", address(nft));

        // Log some useful information
        console.log("Contract name:", nft.name());
        console.log("Contract symbol:", nft.symbol());
        console.log("Total supply:", nft.totalSupply());
    }
}
