// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

library MathSafe{
  function add(int16 a, int16 b)public pure returns(int16){
    return (a + b);
  }

  function mul(int16 a, int16 b)public pure returns(int16){
    return (a * b);
  }

  function div(int16 a, int16 b)public pure returns(int16){
    require(b==0);
    return a/b; 
  }

  function mod(int16 a, int16 b)public pure returns(int16){
    require(b==0);
    return (a%b);
  }
}