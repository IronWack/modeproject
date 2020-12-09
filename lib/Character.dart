import 'package:flutter/cupertino.dart';

import 'Weapons.dart';
import 'Armour.dart';

/*
  Base template for player and enemy, as they share many similiar properties
 */
class Character {
  //fields. Flutter automatically creates public getters and setters
  String name = "";

  //Players health
  int maxHealth;
  int currentHealth;
  int gold;

  /* not currently implemented
  int strengthValue;
  int toughnessValue;
*/
  //weapon and armour. Defaults to item and weapon 0.
  Weapons weapon;
  Armour armour;

  @protected
  Character.set(String name, int maxHealth, Weapons weapon, Armour armour, int gold)
  {
    this.name = name;
    this.maxHealth = maxHealth;
    this.setCurrentHealth = maxHealth;
    this.weapon = weapon;
    this.armour = armour;
    this.gold = gold;
  }

  Character.setFixed(Character character)
  {
    this.name = character.name;
    this.maxHealth = character.maxHealth;
    this.setCurrentHealth = character.maxHealth;
    this.weapon = character.weapon;
    this.armour = character.armour;
    this.gold = character.gold;
  }

  //Setter for current health, ensures health is never more than max
  set setCurrentHealth(int health) {
    if (health > this.maxHealth) {
      throw ("Current Health must be less than or equal to the Max Health. "
          "Values were currentHealth: $health and maxHealth: ${this.maxHealth}");
    } else {
      this.currentHealth = health;
    }
  }
}
