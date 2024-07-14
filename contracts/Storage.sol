// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Storage {
    uint256 x = 97; // EVM has storage slots from 0x000...000 -> 0xffff...fff (2**256 storage slots, 1 storage slot can hold up to 32 bytes) 
    uint256 y = 56; // 0x0000...0001
    // json RPC method to access storage slot: eth_getStorageAt(address, position)
    
    // keccak256(key + baseslot) -> storage slot
    // keccak256(key + 0x2) -> storage slot
    mapping(uint => uint) testing; // 0x2   
    

    constructor() {
        // keccak256(0x0 + 0x2) -> storage slot
        testing[0] = 1;
        // keccak256(0x1 + 0x2) -> storage slot
        testing[1] = 2;
        // keccak256(0x2 + 0x2) -> storage slot
        testing[2] = 3;
        // keccak256(0x3 + 0x2) -> storage slot        
        testing[3] = 4;
        // keccak256(0x4 + 0x2) -> storage slot
        testing[4] = 5;
    }

}
