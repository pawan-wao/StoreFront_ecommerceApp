import 'package:flutter/material.dart';

class Store{
  String? title;
  String? price;
  String? desc;
  String? cname;

  Store({this.title, this.price, this.desc, this.cname});

  factory Store.fromJson(Map<String,dynamic>json){
    return Store(
      title: json["title"],
            price: json["price"],
    desc: json["description"],
    cname: json["name"],
    );
  }

}



/*
        "id": 40,
        "title": "Practical Frozen Bike",
        "price": 689,
        "description": "The Football Is Good For Training And Recreational Purposes",
        "images": [
            "https://i.imgur.com/npLfCGq.jpeg",
            "https://i.imgur.com/vYim3gj.jpeg",
            "https://i.imgur.com/HxuHwBO.jpeg"
        ],
        "creationAt": "2023-12-06T03:10:54.000Z",
        "updatedAt": "2023-12-06T03:10:54.000Z",
        "category": {
            "id": 4,
            "name": "Shoes",
            "image": "https://i.imgur.com/qNOjJje.jpeg",
            "creationAt": "2023-12-06T03:10:54.000Z",
            "updatedAt": "2023-12-06T03:10:54.000Z"
        }
 */