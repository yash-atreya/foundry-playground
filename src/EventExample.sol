// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {
    int256 public counter = 0;

    event Increment(address indexed by, int256 indexed value);
    event Decrement(address indexed by, int256 indexed value);

    function increment() public {
        counter += 1;
        emit Increment(msg.sender, counter);
    }

    function decrement() public {
        counter -= 1;
        emit Decrement(msg.sender, counter);
    }
}
