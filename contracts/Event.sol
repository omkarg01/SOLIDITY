// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Events {
    event TestCalled(address sender, string message);

    function test() public {
        emit TestCalled(msg.sender, "Someone called test()!");
    }
}
