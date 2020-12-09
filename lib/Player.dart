import 'Weapons.dart';
import 'Armour.dart';
import 'Character.dart';

//Implemnts the player character.
class Player extends Character {


  //Constants. Weapons and armour aren't constants but final because of
  //the nightmare in making them constant classes
  static const int _START_HEALTH = 100;
  static const int _START_GOLD = 0;
  //Default weapons and armour is item id 0 in the weapon and armour list.
  static final Weapons _START_WEAPON = Weapons.weaponsList.firstWhere((i) => i.itemID==0);
  static final Armour _START_ARMOUR = Armour.armourList.firstWhere((i)=>i.itemID==0);

  //Constructor of Player
  Player.set(name): super.set(name, _START_HEALTH, _START_WEAPON, _START_ARMOUR, _START_GOLD);
}
