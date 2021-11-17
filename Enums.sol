// SPDX-License-Identifier: ISC

pragma solidity ^0.8.10;

/// @title A cheat-sheet for using enums in Solidity
/// @author Warren Dubery
/// @notice This file contains examples of enums in use


contract YourGarage {
   
   // enums are user-defined data types
   // Below, "Brand" is a new data type
    enum Brand { 
       Ford,
       BMW,
       Mercedes,
       Toyota,
       Porsche,
       Jaguar,
       Honda,
       Renault
    }

    // creating data type called "Fuel"
    enum Fuel { Petrol, Diesel, Electric }

    // creating the struct Car
    struct Car {
       Brand brand;
       Fuel fuel;
    }
    
    // creating an instance of Car, public keyword automatically creates a getter
    Car public yourCar;

    // setting the values in "yourCar" 
    function chooseYourCar (Brand _brand, Fuel _fuel) public returns (Brand, Fuel) {
       yourCar.brand = _brand;
       yourCar.fuel = _fuel;
       return(yourCar.brand, yourCar.fuel);
    }

    // as Solidity handles enums as uints (Ford = 0, BMW = 1, ...), not strings
    // we can access and change the values using integers
    function changeFuelType (uint _newVal) public {
       yourCar.fuel = Fuel(_newVal);
    }
}