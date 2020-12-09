import 'package:flutter/cupertino.dart';

import 'Weapons.dart';
import 'Armour.dart';
import 'Character.dart';

class Enemy extends Character {
  static List<Enemy> enemyList = [
    Enemy.set("pepe", 100, Weapons.weaponsList.firstWhere((i) => i.itemID == 0),
        Armour.armourList.firstWhere((i) => i.itemID == 0), 100),
    Enemy.set("Name", 100, Weapons.weaponsList.firstWhere((i) => i.itemID == 1),
        Armour.armourList.firstWhere((i) => i.itemID == 1), 100),
    Enemy.set("Name", 100, Weapons.weaponsList.firstWhere((i) => i.itemID == 2),
        Armour.armourList.firstWhere((i) => i.itemID == 2), 100),
    Enemy.set("Name", 100, Weapons.weaponsList.firstWhere((i) => i.itemID == 3),
        Armour.armourList.firstWhere((i) => i.itemID == 3), 100),
    Enemy.set("Name", 100, Weapons.weaponsList.firstWhere((i) => i.itemID == 4),
        Armour.armourList.firstWhere((i) => i.itemID == 4), 100),
  ];

  Enemy.setFixed(String fixedName)
      : super.setFixed(
            enemyList.firstWhere((character) => character.name == fixedName));

  @protected
  Enemy.set(
      String genName, int genHealth, Weapons genWeapon, genArmour, genGold)
      : super.set(genName, genHealth, genWeapon, genArmour, genGold);
}
