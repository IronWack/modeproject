import 'Items.dart';


//Represents the armour of the character
class Armour extends Items {
  int _defenseValue;

  //List of all weapons in the game.
  static final List<Armour> armourList = [
    Armour(0, "Test Name", "Test Description", 100, 5),
    Armour(1, "Test Name", "Test Description", 100, 5),
    Armour(2, "Test Name", "Test Description", 100, 5),
    Armour(3, "Test Name", "Test Description", 100, 5),
    Armour(4, "Test Name", "Test Description", 100, 5),
  ];


  //public set constructor for all values
  Armour(int itemId, String name, String description, int price, int defenseValue) : super(itemId, name, description, price){
    this.setDefenseValue = defenseValue;
  }

  //prevents negative armour
  set setDefenseValue(defenseValue) {
    if (defenseValue < 0) {
      throw ("Defense Value can not be less than zero. You entered: $defenseValue");
    } else {
      this._defenseValue = defenseValue;
    }
  }
}
