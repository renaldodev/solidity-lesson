pragma solidity >=0.4.0 <0.9.0;

contract DataType {
    enum Active{
        True,
        False
    }

    struct Person {
        string name;
        address walet;
        uint32 age;
    }
    string name;
    uint64 count;
    address walet;
    bool is_active;
    bytes1 streamData;
    mapping(uint32 => Person) peaples;
 

    constructor(
        string memory _name,
        uint32 _count,
        address _walet,
        bool _is_active
    ) {
        name = _name;
        count = _count;
        walet = _walet;
        is_active = _is_active;
    }
}
