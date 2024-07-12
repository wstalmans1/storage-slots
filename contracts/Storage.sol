// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract Storage {
    uint256 x = 97; // EVM has storage slots from 0x000...000 -> 0xffff...fff (2**256 storage slots, 1 storage slot can hold up to 32 bytes) 
    uint256 y = 56; // 0x0000...0001
    // json RPC method to access storage slot: eth_getStorageAt(address, position)


    // mapping(uint => uint) public myMapping // 0x0000...0002
}
