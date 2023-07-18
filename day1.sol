/*
The topics we covered:

Solidity - Comments
Solidity - Types
Solidity - Variables
Solidity - Variable Scope

*/

// this is the code that John has written today so far. --- single-line comment

/*
This is the Technical Writing Workshop that will last for a month.

A lot of great technical writers and documentation engineers will be bred here.

*/
/*

1. Uint
 this means Unsigned Integer 
 used for numbers
 uint256

2. bool
This is for yes or no
Boolean value or integer

3. String

This is used for words in alphabets
Example: string laptop

4. address

This points to where tokens can be stored or a source of identity

*/

pragma solidity ^0.5.0;

contract SolidityTest {
    address public john;

   uint storedData; // State variable

   constructor() public {
      storedData = 10;   
   }

   function getResult() public view returns(uint){

      uint a = 1; // local variable
      uint b = 2;

      uint result = a + b;

      return result; //access the local variable
   }

}

//  msg.sender = john;
// msg.value = 


/*
Scope: use it for defining the extent to which a variable or function can be seen or interacted.

Public scope: Makes everything readable and accessible
Private: opposite of the above


*/

pragma solidity ^0.5.0;
contract C {
   uint public data = 30;
   uint internal iData= 10;
   
   function x() private returns (uint) {
      data = 3; // internal access
      return data;
   }
}
contract Caller {
   C c = new C();
   function f() public view returns (uint) {
      return c.data(); //external access
   }
}
contract D is C {
   function y() public returns (uint) {
      iData = 3; // internal access
      return iData;
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return storedData; //access the state variable
   }
}


