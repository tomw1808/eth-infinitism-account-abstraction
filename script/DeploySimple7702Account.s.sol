// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import { Simple7702Account } from "../contracts/accounts/Simple7702Account.sol";

contract DeploySimple7702Account is Script {
   

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        Simple7702Account simpleAccount = new Simple7702Account{salt: bytes32(0)}(); //deterministic deployer added salt.

        vm.stopBroadcast();
    }
}
