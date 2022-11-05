// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {
    struct TodoItem {
        string text;
        bool completed;
    }

    TodoItem[] public list;

    function create(string memory _text) public {
        list.push(TodoItem(_text, true));
    }

    
}