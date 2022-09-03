pragma solidity ^0.8.16;

contract Funcion {
    uint16 private number;
    // Initialize the private number 
    constructor(){
        number = 0;
    }
    /**
     *note:When using external over the method means that the referenced method can be accessed only out of the contract,
     * */
    function getNumber() external view returns (uint16) {
        return number;
    }

    function setNumber(uint16 _number)external{
         number=_number;
     }

}
