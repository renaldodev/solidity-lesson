// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./lib.sol";

interface IMathContract {
    function sum(uint256 num, uint256 num2) external returns (uint256);

    function mul(uint256 num, uint256 num2) external returns (uint256);

    function div(uint256 num, uint256 num2) external returns (uint256);

    function mod(uint256 num, uint256 num2) external returns (uint256);
}

contract MathContract is IMathContract {
    using MathSafe for uint256;

    function sum(uint256 num, uint256 num2)
        public
        pure
        override
        returns (uint256)
    {
        return num.add(num2);
    }

    function mul(uint256 num, uint256 num2)
        public
        pure
        override
        returns (uint256)
    {
        return num.mul(num2);
    }

    function div(uint256 num, uint256 num2)
        public
        pure
        override
        returns (uint256)
    {
        return num.div(num2);
    }

    function mod(uint256 num, uint256 num2)
        public
        pure
        override
        returns (uint256)
    {
        return num.mod(num2);
    }
}
