// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Evidence {
  struct Record {
    uint mineTime;
    uint blockNumber;
  }
mapping (bytes32 => Record) private docHashes;
function Notary() public {
    // constructor
  }

// Function to add evidence document 
function addDocHash (bytes32 hash) public {
    Record memory newRecord = Record(block.timestamp, block.number);
    docHashes[hash] = newRecord;
  }
// Function to verify evidence document 
function findDocHash (bytes32 hash) public returns (uint, uint) {
    return (docHashes[hash].mineTime, docHashes[hash].blockNumber);
  }

}
