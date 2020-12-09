import 'package:flutter/cupertino.dart';

import 'Items.dart';

//Defines the function of a weapon.
class Weapons extends Items {
  //Defines the weapons attack range for random generation of damage values
  int _lowerAttackRange;
  int _upperAttackRange;

  //List of all weapons in the game.
  static final List<Weapons> weaponsList = [
    Weapons(0, "Test Name", "Test Description", 100, 5, 9),
    Weapons(1, "Test Name", "Test Description", 100, 5, 9),
    Weapons(2, "Test Name", "Test Description", 100, 5, 9),
    Weapons(3, "Test Name", "Test Description", 100, 5, 9),
    Weapons(4, "Test Name", "Test Description", 100, 5, 9),
  ];

  //constructor for weapons, must be implemented to use.
  @protected
  Weapons(int itemId, String name, String description, int price,
      int lowerAttackRange, int upperAttackRange)
      : super(itemId, name, description, price) {
    this.setLowerAttack = lowerAttackRange;
    this.setUpperAttack = upperAttackRange;
  }

  //setter for the lower bound of the weapons range.
  set setLowerAttack(int lowerAttack) {
    //if the lower bound is greater than or equal to the upper bound, throw an error
    if (lowerAttack >= this._upperAttackRange) {
      throw ("lowerAttackRange must be less than upperAttackRange. Values were"
          "lowerAttackRange: $lowerAttack and upperAttackRange: ${this._upperAttackRange}");
    } else {
      this._lowerAttackRange = lowerAttack;
    }
  }

  get getLowerAttack {
    return _lowerAttackRange;
  }

  get getUpperAttack {
    return _upperAttackRange;
  }

  //Setter for the upper bound of the weapons range
  set setUpperAttack(int upperAttack) {
    //if the upper bound is lesser than the lower bound, throw an error
    if (upperAttack <= this._lowerAttackRange) {
      throw ("lowerAttackRange must be less than upperAttackRange. Values were"
          "lowerAttackRange: ${this._lowerAttackRange} and upperAttackRange: $upperAttack");
    } else {
      this._upperAttackRange = upperAttack;
    }
  }
}
