// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

enum Size {
        sm,
        xs,
        md,
        lg,
        xl,
        xx,
        xxx
}

interface IState{
    function verify_size(Size size)external pure returns(string memory);
}
contract State is IState{
    function verify_size(Size size) public override pure returns(string memory) {
        if (size == Size.md) return "Midle size";
        else if (size == Size.sm) return "Really small";
        else return "You're very luck, I can't handle with this.";
    }
}
