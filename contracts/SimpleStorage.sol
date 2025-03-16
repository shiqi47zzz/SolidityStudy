
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;


//Like class in Java
contract SimpleStorage {

    //This will get initialized to 0
    //If not specify public, by default it will be internal
    // uint256 public favoritNumber;

    struct Person {
       uint age;
       string name;
    }

    // Person public person1 = Person({age:10, name:"john"});

    //Person[3] -> define the biggest size
    Person[] public people;

    //memory vs storage
    //memory only store in runtime
    //storage will store it after the function called
    //string is special type of array of char
    function addPerson (string memory _name, uint _age) public {
        people.push(Person( _age, _name));
        nameToAge[_name] = _age;
    }

    mapping(string => uint256) public nameToAge; 



    // bool favoriteBoolean = true;
    // string favoriteString = "String";
    // int256 faveriteInt = -5;
    // address favoriteAddress = 0x1df76b4fB672bF604Dd99b5FC94Fa61152dBA2d4;
    // bytes32 favoriteBytes = "cat";

    // function store (uint256 _favoriteNumber) public {
    //     favoritNumber = _favoriteNumber;
    // }

    // view and pure are not-state changing functions
    // you just reading the value from blockchain
    // function retreive () public view returns(uint256) {
    //     return favoritNumber;
    // }

    // //pure math calculation
    // function calculate (uint256 favoritNumber) public pure {
    //     favoritNumber  + favoritNumber;
    // }

}