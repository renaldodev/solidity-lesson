// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

library MathSafe{
  function add(uint256 a, uint256 b)public pure returns(uint256){
    return (a + b);
  }

  function mul(uint256 a, uint256 b)public pure returns(uint256){
    return (a * b);
  }

  function div(uint256 a, uint256 b)public pure returns(uint256){
    require(b==0);
    return a/b; 
  }

  function mod(uint256 a, uint256 b)public pure returns(uint256){
    require(b==0);
    return (a%b);
  }
}