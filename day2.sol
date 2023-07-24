// SPDX-License-Identifier: MIT

 pragma solidity 0.8.21;

   contract SayHi {
    
    string public declare = "John is a fantastic engineer!";

   }

    contract GTBank {

        address payable public admin;

    constructor () {
        admin = payable(msg.sender);
    }

// put a receive fallback function

   receive() external payable {}

   function myBalance() external view returns (uint) {
       return address(this).balance;
   }

   function withdraw(uint money) public payable {
       payable(msg.sender).transfer(money);
   }
    }

    // Arithmetic app

contract Mentation {
    uint public times;

    function increase() public {
        times +=1;
    }

    function decrease() public {
        times -= 1;
    }

    function getTimes() public view returns(uint) {
        return times;
    }
}
