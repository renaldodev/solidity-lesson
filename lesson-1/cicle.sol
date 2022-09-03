pragma solidity ^0.8.16;

contract Cicle {
    uint256 constant private INFINITY = 1e2;
    mapping(uint256 => uint256) public colors;

    struct Operation {
        uint32 num1;
        uint32 num2;
        uint32 result;
    }
    mapping(uint16 => Operation) public multply;

    function fromToInfinity() public {
        uint256 value = 0;
        while (value < INFINITY) {
            colors[value] = (value + (value / 2)) / INFINITY;
        }
    }

    function fact(uint64 num) public pure returns (uint64) {
        if (num == 0) return 1;
        return num * fact(num - 1);
    }

    function multplyOperation(uint16 range, uint32 num) public {
        for (uint16 i = 1; i < range; i++) {
            multply[i] = Operation(i, num, i * num);
        }
    }
}
