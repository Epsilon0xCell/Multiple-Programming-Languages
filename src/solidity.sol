/* basic contract structure:
 * https://solidity.readthedocs.io/en/v0.7.1/structure-of-a-contract.html
 */
// I pin this to the 0.7 line with the caret, so it accepts 0.7.x
// compilers and not 0.8. Code I copy from newer tutorials can fail
// or behave differently here, because 0.8 changed defaults I rely
// on below, such as how arithmetic overflow is handled.
pragma solidity ^0.7.1;

contract helloWorld{
//global variables here; these are more $$$
uint value;

    /* Remix button colours:
     * blue buttons are for pure/view; 
     * these are only callable (getter) functions and do NOT change state
     * orange are non-payable (cannot accept ether) but DO change the state
     * also red are payable (next week)
     */
    function hello() public pure returns(string memory){
        //this function call should be free; check gas
        return 'hello there amigo';
    }
    
    //this function will do some calculation
    //note the button colour
    //remix will tell you exactly how much gas (21045)
    // I return value++ and the position of the plus signs matters
    // to me: the caller gets the number value held before this
    // call, and only then does it go up by one, so my first call
    // returns 0, not 1. Unlike hello above, this writes state, so
    // it is a state changing call and not free.
    function helloGas() public returns(uint){
        return value++;
    }
    
    //we have 10 VM accounts here, lets look at a balance
    /*globally available variables: https://solidity.readthedocs.io/en/v0.7.1/units-and-global-variables.html
     * msg.sender
     * msg.value
     * tx.gasprice
     * block.number
       etc.*/ 
    function getBalance() public view returns(uint){
        //this is the contract balance, not the user account balance
        return address(this).balance;
    }
    //How to output a user's (address) balance?
    function getAccountBalance() public view returns(uint){
    // I have left this one as an empty exercise. Until I fill it
    // in, it returns 0 by default, so I read a zero from it as not
    // written yet, never as proof that an account holds nothing.
    }
}
