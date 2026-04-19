// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.18; // soldity versions

 contract SimpleStorage { 
uint256 public favoriteNumber;
//uint256 [] list of favoriteNumber
struct person {
    uint256 favoriteNumber;
    string name; 
}

mapping ( string => uint256) public nameToFavoriteNumber;

person [] public listsofpeople;
   
function store (uint _favoriteNumber)public  {
    favoriteNumber = _favoriteNumber;
}
function retrieve () public view returns(uint256) { 
    return favoriteNumber;
}
 function addperson(string memory name, uint256 _favoriteNumber) public {

    listsofpeople.push (person(_favoriteNumber,name));
    nameToFavoriteNumber[name] = _favoriteNumber;
    // person memory newperson = person (_favoriteNumber, _name)
     // listsofpeople.push(newperson);
    //listsofpeople.push(person(_favoriteNumber,_name));
 }
 function getTotalpeople () public view returns (uint256){return listsofpeople.length;
 }

 }