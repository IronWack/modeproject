/*
  Blueprint for all items
 */

import 'package:flutter/cupertino.dart';

class Items {
  String name;
  String description;
  int itemID;
  int _price;

  Items._();

  Items(int id, String name, String description, int price)
  {
    this.itemID = id;
    this.name = name;
    this.description=description;
    this.setPrice = price;
  }

   set setPrice(int price){
     if (price < 0){
       throw("Price can not be negative. You entered $price");
     }
     else{
       this._price = price;
     }
   }
   get getPrice
   {
     return _price;
   }
}
