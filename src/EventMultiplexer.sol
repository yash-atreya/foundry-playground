// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventMultiplexer {
    event Add(address indexed sender, int256 indexed value);
    event Sub(address indexed sender, int256 indexed value);
    event Mul(address indexed sender, int256 indexed value);
    event Div(address indexed sender, int256 indexed value);

    function add(int256 a, int256 b) public {
        emit Add(msg.sender, a + b);
    }

    function sub(int256 a, int256 b) public {
        emit Sub(msg.sender, a - b);
    }

    function mul(int256 a, int256 b) public {
        emit Mul(msg.sender, a * b);
    }

    function div(int256 a, int256 b) public {
        emit Div(msg.sender, a / b);
    }
}
