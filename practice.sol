pragma solidity  ^0.4.0; // solidity compiler version

contract Practice {
    string word;
    uint number; 
    address owner;

    function Practice() { // old way of declaring a constructo
        word = "parents";
        number = 100;
        owner = msg.sender;
    }

    event Changed(address a); // declaring an event

    modifier onlyOwner {
        if (msg.sender != owner) { // restricting the changes only to the owner of the contract
            throw ;
        }
        _; // placeholder for the function
        
    }

    function getWord( ) constant returns (string) { // getter function
        return word;
    }
    function setWord(string w) onlyOwner { // setter function restricted to only the owner
        word = w;
        Changed(msg.sender); // calling the event
    }

}
