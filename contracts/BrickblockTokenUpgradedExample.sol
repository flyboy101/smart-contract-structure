// THIS IS EXAMPLE CODE ONLY USED FOR TESTING BrickblockToken.sol
pragma solidity ^0.4.18;

import './BrickblockToken.sol';


// this is just a simulated upgrade contract to the original contract
// there are new public constants and a new function
contract BrickblockTokenUpgraded is BrickblockToken {

  // change the name of the 'new' contract
  string public constant name = "BrickblockTokenNew";
  // change the symbol of the 'new' contract
  string public constant symbol = "BBT-NEW";
  // add a new constant to test
  string public newThing;

  function BrickblockTokenUpgraded(address _predecessor) BrickblockToken(_predecessor) {

  }

  function changeNew(string _new) returns (bool) {
    newThing = _new;
    return true;
  }

}
