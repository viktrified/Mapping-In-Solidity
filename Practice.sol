// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RandomLoop {
    uint[] public list;

    function randomNumber() public view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encode(block.timestamp, block.prevrandao, msg.sender)
                )
            );
    }

    function forLoopRandom() public returns (uint256) {
        uint256 random;

        for (uint256 i = 0; i < 5; i++) {
            random = randomNumber();
            list.push(random);
        }
        return random;
    }
}

contract MappingBasics {
    function count(uint _count) public pure returns (uint) {
        return ++_count;
    }
}
