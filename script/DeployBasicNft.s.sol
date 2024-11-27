//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {Script} from "lib/forge-std/src/Script.sol";
import {BasicNft} from "src/BasicNft.sol";

contract DeployBasicNft is Script{
    function run() public returns(BasicNft){
    vm.startBroadcast();
    BasicNft basicNft = new BasicNft();
    vm.stopBroadcast();
    return basicNft;
    }

    

}
