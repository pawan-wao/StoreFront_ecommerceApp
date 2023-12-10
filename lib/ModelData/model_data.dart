import 'package:store_front/main.dart';
//model class
class ModelData{
  static List<Item> item = [
    Item(catogry: "Men's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Women's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Electronics", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "jewelery", apiendpoint: "https://fakestoreapi.com/products/category/jewelery"),
    Item(catogry: "Men's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Women's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Electronics", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "jewelery", apiendpoint: "https://fakestoreapi.com/products/category/jewelery"),
    Item(catogry: "Men's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Women's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Electronics", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "jewelery", apiendpoint: "https://fakestoreapi.com/products/category/jewelery"),
    Item(catogry: "Men's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Women's clothing", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "Electronics", apiendpoint: "https://fakestoreapi.com/products/category/electronics"),
    Item(catogry: "jewelery", apiendpoint: "https://fakestoreapi.com/products/category/jewelery"),
  ];
}

class Item{
  String catogry;
  String apiendpoint;
      Item({required this.catogry, required this.apiendpoint });
}