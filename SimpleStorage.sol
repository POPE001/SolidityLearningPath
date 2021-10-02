//SPDX-License-Identifier: MIT

pragma solidity 0.6.0;

//this is a class
contract SimpleStorage {
    
    //this will get initialied to zero
    uint256 favoriteNumber;
    
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    

    
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    //create your first function, function helps us mention us tasks.
    //they are defined by the keywords function
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People( _favoriteNumber,  _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
